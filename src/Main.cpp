#include "MiscellaneousFunction.hpp"


namespace plt = matplotlibcpp;
using namespace std;


int main() {


    int size = 100;
    // Declare a noise function and put it on a grid
    vector<vector<double>> Grid_noise;
    vector<vector<double>> grid_x;
    vector<vector<double>> grid_y;
    std::tie(Grid_noise, grid_x, grid_y) = GridNoise();

    // Generate points of the interpolation border (coordinates x, y, z)
    vector<double> x_points;
    vector<double> y_points;
    vector<double> z_points;
    std::tie(x_points, y_points, z_points) = GenerateXYZ();



    // Prpare grid to display, each of grid_zn correspond to an interpolation type
    vector<vector<double>> grid_z1(size, vector<double>(size));
    vector<vector<double>> grid_z2(size, vector<double>(size));



    // Select a method
    _2D::ThinPlateSplineInterpolator<double> interp1;
    _2D::LinearDelaunayTriangleInterpolator<double> interp2;

    // set the data that will be interpolated.
    // Compute execution time for interp1.setData
    auto start1 = std::chrono::high_resolution_clock::now();
    interp1.setData(x_points, y_points, z_points);
    auto end1 = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> elapsed1 = end1 - start1;

    std::cout << "Execution time for interp1.setData : " << elapsed1.count() << " secondes" << std::endl;

    // Mesurer le temps d'exécution pour interp2.setData
    auto start2 = std::chrono::high_resolution_clock::now();
    interp2.setData(x_points, y_points, z_points);
    auto end2 = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> elapsed2 = end2 - start2;

    std::cout << "Execution time for interp2.setData : " << elapsed2.count() << " secondes" << std::endl;


    vector<vector<double>> grid_x3(size, vector<double>(size));
    vector<vector<double>> grid_y3(size, vector<double>(size));
    vector<vector<double>> grid_z3(size, vector<double>(size));

    // The flow direction (in radiant, 0° is the north direction)
    double flow_dir =M_PI/2;

    //Compute of the maximal extension coefficient on the grid in the flow_dir orthogonal direction
    double maxExtentionCoeff;
    double reste = abs(fmod(flow_dir, M_PI/2));
	if (reste >M_PI/4 ){
		maxExtentionCoeff = cos(M_PI/4 + M_PI/4 -reste);
	}
	else{
		maxExtentionCoeff = cos(M_PI/4 -reste);
	}
	cout<<"maxExtentionCoeff: "<<maxExtentionCoeff<<endl;

	// Add the quadratic coefficient for all points that aren't in the valley that trace the flow direction in the known domain
    for (int i = 0; i < size; ++i) {
        for (int j = 0; j < size; ++j) {

        	grid_z3[i][j]= GetTopo(i, j, flow_dir, size/2, size/2, maxExtentionCoeff);
        	grid_x3[i][j]=i;
        	grid_y3[i][j]=j;
        }

    }

    for (int i = 0; i < size; ++i) {
        for (int j = 0; j < size; ++j) {
        	// Let the topo be the original noise in the known domain
        	if (i>25 && i<75 && j>25 && j<75){
                grid_z1[i][j] = Grid_noise[i][j];
                grid_z2[i][j] = Grid_noise[i][j];
        	}
        	else{
				grid_z1[i][j] = interp1(i, j);
				grid_z2[i][j] = interp2(i, j);
        	}
        	//For grid_z3 we add the exponential topo effect to every points
        	grid_z3[i][j]+=grid_z1[i][j];
        }
    }



    // Display 3D results

    plt::plot_surface(grid_x, grid_y, Grid_noise, {{"cmap", "viridis"}});
    plt::scatter(x_points, y_points, 20, {{"color", "red"}});
    plt::title("Original Noise");


    plt::plot_surface(grid_x, grid_y, grid_z1, {{"cmap", "viridis"}});
    plt::scatter(x_points, y_points, 20, {{"color", "red"}});
    plt::title("Thin Plate");

    plt::plot_surface(grid_x, grid_y, grid_z2, {{"cmap", "viridis"}});
    plt::scatter(x_points, y_points, 20, {{"color", "red"}});
    plt::title("LinearDelaunay");

    plt::plot_surface(grid_x3, grid_y3, grid_z3, {{"cmap", "viridis"}});
    plt::scatter(x_points, y_points, 20, {{"color", "red"}});
    plt::title("Thin Plate + Quadratic Border");

    plt::tight_layout();
    plt::show();

    return 0;
}
