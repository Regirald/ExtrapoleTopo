/*
 * MiscellaneousFunction.hpp
 *
 * Created on: Aug 10, 2023
 * Author: rleblond
 */

#ifndef MISCELLANEOUSFUNCTION_HPP_
#define MISCELLANEOUSFUNCTION_HPP_

#include <iostream>
#include <vector>
#include <Eigen/Dense>
#include <matplotlibcpp.h>
#include <cmath>
#include <Interpolate.hpp>
#include <vector>
#include <algorithm>
#include <chrono>
#include <tuple>

#include "MiscellaneousFunction.hpp"

namespace plt = matplotlibcpp;
using namespace std;

// Define a custom noise function
double customNoise(double x, double y) {
    double frequency = 0.1;  // Adjust this frequency to change the pattern
    double amplitude = 0.5;  // Adjust this amplitude to change the intensity
    return amplitude * (sin(frequency * x) + cos(frequency * y));
}

// Define a function that always returns 0
double Zero(double x, double y) {
    return 0.0;
}

// Define a structure to hold data points
struct Point {
    double x;
    double y;
    double z;
};

// Comparison function for sorting data points based on the x-coordinate
bool compareDataPoints(const Point& a, const Point& b) {
    if (a.x != b.x) {
        return a.x < b.x;
    }
    return a.y < b.y;
}

// Calculate the Euclidean distance between two points
double DistancePoint(const Point& a, const Point& b) {
    return sqrt((a.x - b.x) * (a.x - b.x) + (a.y - b.y) * (a.y - b.y));
}

// Calculate the angle between two points
double AnglePoint(const Point& a, const Point& b) {
    return atan((a.y - b.y) / (a.x - b.x));
}

// Check if two data points are equal
bool areDataPointsEqual(const Point& a, const Point& b) {
    return a.x == b.x && a.y == b.y;
}

// Sort data points and remove duplicates
void sortAndRemoveDuplicates(vector<Point>& dataPoints) {
    std::sort(dataPoints.begin(), dataPoints.end(), compareDataPoints);
    dataPoints.erase(std::unique(dataPoints.begin(), dataPoints.end(), areDataPointsEqual), dataPoints.end());
}

// Generate data points for a border
std::vector<Point> generateBorderPoints(double x_begin, double x_end, std::function<double(double, double)> noiseFunction) {
    std::vector<Point> borderPoints;

    for (double i = x_begin; i < x_end; ++i) {
        borderPoints.push_back({i, x_begin, noiseFunction(i, x_begin)});
        borderPoints.push_back({x_begin, i, noiseFunction(x_begin, i)});
        borderPoints.push_back({i, x_end, noiseFunction(i, x_end)});
        borderPoints.push_back({x_end, i, noiseFunction(x_end, i)});
    }
    borderPoints.push_back({x_end, x_end, noiseFunction(x_end, x_end)});
    borderPoints.erase(borderPoints.begin());
    return borderPoints;
}

// Generate a grid of noise values
std::tuple<vector<vector<double>>, vector<vector<double>>, vector<vector<double>>> GridNoise() {
    // Generate a grid in the [0, 1]x[0, 1] range
    int size = 100;

    // Generate noise values using the custom sine-based function
    vector<vector<double>> Grid_noise(size, vector<double>(size));
    vector<vector<double>> grid_x(size, vector<double>(size));
    vector<vector<double>> grid_y(size, vector<double>(size));
    for (int i = 0; i < size; ++i) {
        for (int j = 0; j < size; ++j) {
            Grid_noise[i][j] = customNoise(i, j);
            grid_x[i][j] = i;
            grid_y[i][j] = j;
        }
    }
    std::tuple<vector<vector<double>>, vector<vector<double>>, vector<vector<double>>> output(Grid_noise, grid_x, grid_y);
    return output;
}

// Generate XYZ data points
std::tuple<vector<double>, vector<double>, vector<double>> GenerateXYZ() {
    // Generate a regular grid of 2D points with dimensions 50x50

    vector<double> x_points;
    vector<double> y_points;
    vector<double> z_points;
    vector<Point> bord = generateBorderPoints(25, 75, customNoise);
    vector<Point> bord3 = generateBorderPoints(0, 100, Zero);

    bord.insert(bord.end(), bord3.begin(), bord3.end());

    // Sort the data points based on x-coordinates
    sortAndRemoveDuplicates(bord);

    for (int i = 0; i < int(bord.size()); ++i) {
        x_points.push_back(bord[i].x);
        y_points.push_back(bord[i].y);
        z_points.push_back(bord[i].z);
    }
    std::tuple<vector<double>, vector<double>, vector<double>> output(x_points, y_points, z_points);
    return output;
}

// !! We assume the grid is always centered on its center !!
//return the value of quadratic extrapolation given a x, y coordinate
double GetTopo(int x, int y, double flow_dir, int size_l, int size_L, double maxExtentionCoeff) {
    double diago = sqrt(size_l * size_l + size_L * size_L);
    double H = diago * maxExtentionCoeff;

    Point center({50, 50, 0});
    Point current({x, y, 0});
    // Calculate the virtual distance to the flow direction d_fl (referential from the center)
    double d = DistancePoint(center, current);
    double angle = AnglePoint(center, current) - flow_dir;
    double d_fl = abs(cos(angle) * d);

    //We don't affect the topo if x, y is in the known domain valley
    if (d_fl > H / 2) {
        double acc = ((d_fl - H / 2) / diago) * ((d_fl - H / 2) / diago);
        return acc * 5;
    }
    return 0;
}

#endif /* MISCELLANEOUSFUNCTION_HPP_ */
