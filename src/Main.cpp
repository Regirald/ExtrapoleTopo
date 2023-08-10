#include <iostream>
#include <vector>
#include "Eigen/Dense"
#include <matplotlibcpp.h>
#include <cmath>
#include <Interpolate.hpp>
#include <vector>
#include <algorithm>

namespace plt = matplotlibcpp;
using namespace std;

double customNoise(double x, double y) {
    double frequency = 0.1;  // Ajustez cette fréquence pour changer le motif
    double amplitude = 0.5;  // Ajustez cette amplitude pour changer l'intensité
    return amplitude * (sin(frequency * x) + cos(frequency * y));
}
double Zero(double x, double y) {
    return 0.0;
}

// Define a structure to hold the data points
struct Point {
    double x;
    double y;
    double z;
};

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



// Comparison function for sorting based on x-coordinate
bool compareDataPoints(const Point& a, const Point& b) {
    if (a.x != b.x) {
        return a.x < b.x;
    }
    return a.y < b.y;
}
bool areDataPointsEqual(const Point& a, const Point& b) {
    return a.x == b.x && a.y == b.y;
}
void sortAndRemoveDuplicates(vector<Point> &dataPoints) {

    std::sort(dataPoints.begin(), dataPoints.end(), compareDataPoints);
    dataPoints.erase(std::unique(dataPoints.begin(), dataPoints.end(), areDataPointsEqual), dataPoints.end());
}

int main() {

    // Générer une grille dans [0, 1]x[0, 1]
    int size = 100;

    // Générer les valeurs du bruit à partir de la fonction sinusoidale personnalisée
    vector<vector<double>> Grid_noise(size, vector<double>(size));
    vector<vector<double>> grid_x(size, vector<double>(size));
    vector<vector<double>> grid_y(size, vector<double>(size));
    for (int i = 0; i < size; ++i) {
        for (int j = 0; j < size; ++j) {
        	Grid_noise[i][j] = customNoise(i, j);
        	grid_x[i][j]=i;
        	grid_y[i][j]=j;
        }
    }

    // Aplatir le tableau noise pour l'utiliser comme valeurs
    vector<double> values(size * size);
    for (int i = 0; i < size; ++i) {
        for (int j = 0; j < size; ++j) {
            values[i * size + j] = Grid_noise[i][j];
        }
    }

    // Générer une grille régulière de points 2D de dimension 50*50

    vector<double> x_points;
    vector<double> y_points;
    vector<double> z_points;
    vector<Point>  bord = generateBorderPoints(25, 75, customNoise);
    vector<Point>  bord2 = generateBorderPoints(26, 74, customNoise);
    vector<Point>  bord3 = generateBorderPoints(0, 100, Zero);

    bord.insert(bord.end(), bord2.begin(), bord2.end());
    bord.insert(bord.end(), bord3.begin(), bord3.end());

    // Sort the data points based on x-coordinates
    sortAndRemoveDuplicates(bord);

    for (int i = 0; i < int(bord.size()); ++i) {
    	x_points.push_back(bord[i].x);
    	y_points.push_back(bord[i].y);
    	z_points.push_back(bord[i].z);

//    	cout<<"x: "<<x_points[i]<<"  y: "<<y_points[i]<<"  z: "<<z_points[i]<<endl;
    }


    // Interpolation cubique des valeurs sur la grille
    vector<vector<double>> grid_z0(size, vector<double>(size));
    vector<vector<double>> grid_z1(size, vector<double>(size));
    vector<vector<double>> grid_z2(size, vector<double>(size));


    // To select a method, use the corresponding class
//    _2D::BicubicInterpolator<double> interp1;
    _2D::ThinPlateSplineInterpolator<double> interp1;
    _2D::LinearDelaunayTriangleInterpolator<double> interp2;

    // set the data that will be interpolated.
//    interp1.setData(x_points, y_points, z_points);
    interp1.setData(x_points, y_points, z_points);
    interp2.setData(x_points, y_points, z_points);


    for (int i = 0; i < size; ++i) {
        for (int j = 0; j < size; ++j) {

        	if (i>25 && i<75 && j>25 && j<75){

                // Linear interpolation.
                grid_z1[i][j] = Grid_noise[i][j];

                // Cubic interpolation.
                grid_z2[i][j] = Grid_noise[i][j];
        	}
        	else{

				// Linear interpolation.
				grid_z1[i][j] = interp1(i, j);

				// Cubic interpolation.
				grid_z2[i][j] = interp2(i, j);
        	}
        }
    }


    // Affichage des résultats en 3D


    // Affichage du noise original
    plt::plot_surface(grid_x, grid_y, Grid_noise, {{"cmap", "viridis"}});
    plt::scatter(x_points, y_points, 20, {{"color", "red"}});
    plt::title("Original Noise");


    plt::plot_surface(grid_x, grid_y, grid_z1, {{"cmap", "viridis"}});
    plt::scatter(x_points, y_points, 20, {{"color", "red"}});
    plt::title("Thin Plate");

    plt::plot_surface(grid_x, grid_y, grid_z2, {{"cmap", "viridis"}});
    plt::scatter(x_points, y_points, 20, {{"color", "red"}});
    plt::title("LinearDelaunay");

    plt::tight_layout();
    plt::show();

    return 0;
}
