#include <iostream>
#include <vector>
#include "Eigen/Dense"
#include <matplotlibcpp.h>
#include <cmath>
#include <Interpolate.hpp>
#include <vector>

namespace plt = matplotlibcpp;
using namespace std;

double customNoise(double x, double y) {
    double frequency = 5.0;  // Ajustez cette fréquence pour changer le motif
    double amplitude = 0.5;  // Ajustez cette amplitude pour changer l'intensité
    return amplitude * (std::sin(frequency * x) + std::cos(frequency * y));
}

int main() {
    // Générer une grille dans [0, 1]x[0, 1]
    int size = 100;

    // Générer les valeurs du bruit à partir de la fonction sinusoidale personnalisée
    std::vector<std::vector<double>> Grid_noise(size, std::vector<double>(size));
    std::vector<std::vector<double>> grid_x(size, std::vector<double>(size));
    std::vector<std::vector<double>> grid_y(size, std::vector<double>(size));
    for (int i = 0; i < size; ++i) {
        for (int j = 0; j < size; ++j) {
        	Grid_noise[i][j] = 100*customNoise(i, j);
        	grid_x[i][j]=i;
        	grid_y[i][j]=j;
        }
    }

    // Aplatir le tableau noise pour l'utiliser comme valeurs
    std::vector<double> values(size * size);
    for (int i = 0; i < size; ++i) {
        for (int j = 0; j < size; ++j) {
            values[i * size + j] = Grid_noise[i][j];
        }
    }

    // Générer une grille régulière de points 2D de dimension 50*50
    int num_points = 50;
    std::vector<double> x_points(num_points*num_points);
    std::vector<double> y_points (num_points*num_points);
    std::vector<double> z_points (num_points*num_points);
    std::vector<std::vector<double>>  points(num_points, std::vector<double>(2));
    for (int i = 25; i < num_points+1; ++i) {
        for (int j = 25; j < num_points+1; ++j) {
        	x_points[i* num_points +j]=i;
			y_points[i* num_points +j]=j;
			z_points[i* num_points +j]=Grid_noise[i][j];
//            cout<<round(z_points[i* num_points +j])<<" " ;

        }
//        cout<<endl;
    }

    // Ajouter une bordure extérieure avec des valeurs 0
    double step = 1;
    int num_border_points = 100;
    std::vector<double> x_points_border(4 * num_border_points);
    std::vector<double> y_points_border(4 * num_border_points);
    std::vector<double> z_points_border(4 * num_border_points);
    for (int i = 0; i < num_border_points; ++i) {
    	x_points_border[i] = i;
    	y_points_border[i] = 0;
    	z_points_border[i] = 0.0;

    	x_points_border[num_border_points + i] = 0;
    	y_points_border[num_border_points + i] = i;
    	z_points_border[num_border_points + i] = 0.0;

    	x_points_border[2 * num_border_points + i] = i;
    	y_points_border[2 * num_border_points + i] = 100;
    	z_points_border[2 * num_border_points + i] = 0.0;

    	x_points_border[3 * num_border_points + i] = 100;
    	y_points_border[3 * num_border_points + i] = i;
    	z_points_border[3 * num_border_points + i] = 0.0;

    }

    // Combiner les points de la grille régulière avec les points de la bordure
    x_points.insert(x_points.end(), x_points_border.begin(), x_points_border.end());
    y_points.insert(y_points.end(), y_points_border.begin(), y_points_border.end());
    z_points.insert(z_points.end(), z_points_border.begin(), z_points_border.end());


    // Interpolation cubique des valeurs sur la grille
    std::vector<std::vector<double>> grid_z0(size, std::vector<double>(size));
    std::vector<std::vector<double>> grid_z1(size, std::vector<double>(size));
    std::vector<std::vector<double>> grid_z2(size, std::vector<double>(size));


    // To select a method, use the corresponding class
    _2D::BicubicInterpolator<double> interp1;
    _2D::BilinearInterpolator<double> interp2;
    _2D::LinearDelaunayTriangleInterpolator<double> interp3;

    // set the data that will be interpolated.
    interp1.setData(x_points, y_points, z_points);
    interp2.setData(x_points, y_points, z_points);
    interp3.setData(x_points, y_points, z_points);


    for (int i = 0; i < size; ++i) {
        for (int j = 0; j < size; ++j) {

            grid_z0[i][j] = interp1(i, j);

            // Linear interpolation.
            grid_z1[i][j] = interp2(i, j);

            // Cubic interpolation.
            grid_z2[i][j] = interp3(i, j);
        }
    }




    // Affichage des résultats en 3D
//    plt::figure_size(1500, 600);

    // Convertir les tableaux Eigen::ArrayXXd en vecteurs std::vector pour plot_surface
//    std::vector<std::vector<double>> grid_x_vec(size, std::vector<double>(size));
//    std::vector<std::vector<double>> grid_y_vec(size, std::vector<double>(size));
//    std::vector<std::vector<double>> grid_z1_vec(size, std::vector<double>(size));
//    std::vector<std::vector<double>> grid_z2_vec(size, std::vector<double>(size));

//    for (int i = 0; i < size; ++i) {
//        for (int j = 0; j < size; ++j) {
//            grid_x_vec[i][j] = grid_x(i, j);
//            grid_y_vec[i][j] = grid_y(i, j);
//            grid_z1_vec[i][j] = grid_z1(i, j);
//            grid_z2_vec[i][j] = grid_z2(i, j);
//        }
//    }
//
//    std::vector<double> all_points_x_vec(all_points.col(0).data(), all_points.col(0).data() + all_points.rows());
//    std::vector<double> all_points_y_vec(all_points.col(1).data(), all_points.col(1).data() + all_points.rows());


    // Affichage du noise original
    plt::plot_surface(grid_x, grid_y, Grid_noise, {{"cmap", "viridis"}});
    plt::scatter(x_points, y_points, 1, {{"c", "k"}}); // Utilisation de scatter avec les vecteurs std::vector
    plt::title("Original Noise");



    plt::plot_surface(grid_x, grid_y, grid_z0, {{"cmap", "viridis"}});
    plt::title("Bicubic");

    plt::plot_surface(grid_x, grid_y, grid_z1, {{"cmap", "viridis"}});
    plt::title("Bilinear");

    plt::plot_surface(grid_x, grid_y, grid_z2, {{"cmap", "viridis"}});
    plt::title("LinearDelaunay");

    plt::tight_layout();
    plt::show();

    return 0;
}
