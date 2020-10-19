#include <vector>
#include <cmath>
#include <limits>
#include <iostream>
#include "tgaimage.h"
#include "model.h"
#include "geometry.h"

const int width = 800;
const int height = 800;
const int depth = 255;

Model *model = NULL;
int *zbuffer = NULL;
Vec3f light_dir(0, 0, -1);
Vec3f camera(0, 0, 3);

Vec3f m2v(Matrix m) {
	return Vec3f(m[0][0]/m[3][0], m[1][0]/m[3][0], m[2][0]/m[3][0]);
}

Matrix v2m(Vec3f v) {
	Matrix m(4, 1);
	m[0][0] = v.x;
	m[1][0] = v.y;
	m[2][0] = v.z;
	m[3][0] = 1.f;
	return m;
}

Matrix viewport(int x, int y, int w, int h) {
	Matrix m = Matrix::identity(4);
	m[0][3] = x+w/2.f;
	m[1][3] = y+h/2.f;
	m[2][3] = depth/2.f;

	m[0][0] = w/2.f;
	m[1][1] = h/2.f;
	m[2][2] = depth/2.f;
	
	return m;
}

void triangle(Vec3i t0, Vec3i t1, Vec3i t2, Vec2i uv0, Vec2i uv1, Vec2i uv2, TGAImage &image, float intensity, int *zbuffer) {
	if (t0.y == t1.y && t0.y == t2.y) return ;
	if (t0.y > t2.y) {std::swap(t0, t2); std::swap(uv0, uv2);}
	if (t1.y > t2.y) {std::swap(t1, t2); std::swap(uv1, uv2);}
	if (t0.y > t1.y) {std::swap(t0, t1); std::swap(uv0, uv1);}

	int total_height = t2.y-t0.y;
	for (int i = 0; i < total_height; i++) {
		bool second_half = i > t1.y-t0.y || t1.y == t0.y;
		axt segment_height = second_half ? t2.y-t1.y : t1.y-t0.y;
		float alpha = (float)i/total_height;
		float beta = (float)(i-(second_half ? t1.y-t0.y : 0))/segment_height;
		Vec3i A = t0 + Vec3f(t2-t0)*alpha;
		Vec3i B = second_half ? t1 + Vec3f(t2-t1)*beta : t0 + Vec3f(t1-t0)*beta;
		Vec2i uvA = uv0 + (uv2-uv0)*alpha;
		Vec2i uvB = second_half ? uv1 + (uv2-uv1)*beta : (uv1-uv0)*beta;
		
		if (A.x > B.x) {std::swap(A, B); std::swap(uvA, uvB);}
		for (int j = A.x; j <= B.x; j++) {
			float phi = B.x == A.x ? 1.f : (float)(j-A.x)/(float)(B.x-A.x);
			Vec3i P = Vec3f(A) + Vec3f(B-A)*phi;
			Vec2i uvP = uvA + (uvB-uvA)*phi;
			int idx = P.x+P.y*width;
			if (zbuffer[idx] < P.z) {
				zbuffer[idx] = P.z;
				TGAColor color = model->diffuse(uvP);
				image.set(P.x, P.y, TGAColor(color.r*intensity, color.g*intensity, color.b*intensity, 255));
			}
		}
	}
}

int main() {




