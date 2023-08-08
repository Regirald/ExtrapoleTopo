#include <iostream>
#include <vector>
#include "Eigen/Dense"
#include <matplotlibcpp.h>
#include <cmath>
#include <Interpolate.hpp>

namespace plt = matplotlibcpp;

double customNoise(double x, double y) {
    double frequency = 5.0;  // Ajustez cette fréquence pour changer le motif
    double amplitude = 0.5;  // Ajustez cette amplitude pour changer l'intensité
    return amplitude * (std::sin(frequency * x) + std::cos(frequency * y));
}

int main() {
    // Générer une grille dans [0, 1]x[0, 1]
    int size = 100;
    Eigen::ArrayXXd grid_x, grid_y;
    grid_x.resize(size, size);
    grid_y.resize(size, size);
    for (int i = 0; i < size; ++i) {
        grid_x.col(i) = Eigen::ArrayXd::LinSpaced(size, 0, 1);
        grid_y.row(i) = Eigen::ArrayXd::LinSpaced(size, 0, 1);
    }

    // Générer les valeurs du bruit à partir de la fonction sinusoidale personnalisée
    std::vector<std::vector<double>> noise(size, std::vector<double>(size));
    for (int i = 0; i < size; ++i) {
        for (int j = 0; j < size; ++j) {
            noise[i][j] = customNoise(grid_x(i, j), grid_y(i, j));
        }
    }

    // Aplatir le tableau noise pour l'utiliser comme valeurs
    Eigen::VectorXd values(size * size);
    for (int i = 0; i < size; ++i) {
        for (int j = 0; j < size; ++j) {
            values[i * size + j] = noise[i][j];
        }
    }

    // Générer une grille régulière de points 2D de dimension 100x100
    int num_points = 100;
    Eigen::ArrayXd x_points = Eigen::ArrayXd::LinSpaced(num_points, 0, 1);
    Eigen::ArrayXd y_points = Eigen::ArrayXd::LinSpaced(num_points, 0, 1);
    Eigen::MatrixXd points(num_points * num_points, 2);
    for (int i = 0; i < num_points; ++i) {
        for (int j = 0; j < num_points; ++j) {
            points.row(i * num_points + j) << x_points[i], y_points[j];
        }
    }

    // Ajouter une bordure extérieure avec des valeurs 0
    double step = 0.1;
    int num_border_points = static_cast<int>((0.75 - (0.25)) / step) + 1;
    Eigen::MatrixXd border_points(4 * num_border_points, 2);
    Eigen::VectorXd border_values(4 * num_border_points);
    for (int i = 0; i < num_border_points; ++i) {
        border_points.row(i) << 0 + step * i, 0;
        border_values[i] = 0.0;

        border_points.row(num_border_points + i) << 0, 0 + step * i;
        border_values[num_border_points + i] = 0.0;

        border_points.row(2 * num_border_points + i) << 0 + step * i, 1;
        border_values[2 * num_border_points + i] = 0.0;

        border_points.row(3 * num_border_points + i) << 1, 0 + step * i;
        border_values[3 * num_border_points + i] = 0.0;
    }

    // Combiner les points de la grille régulière avec les points de la bordure
    Eigen::MatrixXd all_points(points.rows() + border_points.rows(), 2);
    Eigen::VectorXd all_values(values.rows() + border_values.rows());
    all_points << points, border_points;
    all_values << values, border_values;

    // Interpolation cubique des valeurs sur la grille
    Eigen::MatrixXd grid_z0(size, size);
    Eigen::MatrixXd grid_z1(size, size);
    Eigen::MatrixXd grid_z2(size, size);

    std::vector<double> all_points_x, all_points_y, all_values_vec;
    for (int i = 0; i < all_points.rows(); ++i) {
        all_points_x.push_back(all_points(i, 0));
        all_points_y.push_back(all_points(i, 1));
        all_values_vec.push_back(all_values(i));
    }


    // To select a method, use the corresponding class
    _2D::BicubicInterpolator<double> interp1;
    _2D::BilinearInterpolator<double> interp2;
    _2D::LinearDelaunayTriangleInterpolator<double> interp3;

    // set the data that will be interpolated.
    interp1.setData(all_points_x, all_points_y, all_values_vec);
    interp2.setData(all_points_x, all_points_y, all_values_vec);
    interp3.setData(all_points_x, all_points_y, all_values_vec);



    for (int i = 0; i < size; ++i) {
        for (int j = 0; j < size; ++j) {

            grid_z0(i, j) = interp1(i, j);

            // Linear interpolation.
            grid_z1(i, j) = interp2(i, j);

            // Cubic interpolation.
            grid_z2(i, j) = interp3(i, j);
        }
    }




    // Affichage des résultats en 3D
    plt::figure_size(1500, 600);

    // Convertir les tableaux Eigen::ArrayXXd en vecteurs std::vector pour plot_surface
    std::vector<std::vector<double>> grid_x_vec(size, std::vector<double>(size));
    std::vector<std::vector<double>> grid_y_vec(size, std::vector<double>(size));
    std::vector<std::vector<double>> grid_z1_vec(size, std::vector<double>(size));
    std::vector<std::vector<double>> grid_z2_vec(size, std::vector<double>(size));

    for (int i = 0; i < size; ++i) {
        for (int j = 0; j < size; ++j) {
            grid_x_vec[i][j] = grid_x(i, j);
            grid_y_vec[i][j] = grid_y(i, j);
            grid_z1_vec[i][j] = grid_z1(i, j);
            grid_z2_vec[i][j] = grid_z2(i, j);
        }
    }

//    std::vector<double> all_points_x_vec(all_points.col(0).data(), all_points.col(0).data() + all_points.rows());
//    std::vector<double> all_points_y_vec(all_points.col(1).data(), all_points.col(1).data() + all_points.rows());


    // Affichage du noise original
    plt::subplot(1, 3, 1);
    plt::plot_surface(grid_x_vec, grid_y_vec, noise, {{"cmap", "viridis"}});
    //plt::scatter(all_points_x_vec, all_points_y_vec, 1, {{"c", "k"}}); // Utilisation de scatter avec les vecteurs std::vector
    plt::title("Original Noise");

    plt::subplot(1, 3, 2);
    plt::plot_surface(grid_x_vec, grid_y_vec, grid_z1_vec, {{"cmap", "viridis"}});
    plt::title("Linear");

    plt::subplot(1, 3, 3);
    plt::plot_surface(grid_x_vec, grid_y_vec, grid_z2_vec, {{"cmap", "viridis"}});
    plt::title("Cubic");

    plt::tight_layout();
    plt::show();

    return 0;
}
