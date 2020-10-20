#ifndef __GEOMETRY_H__
#define __GEOMETRY_H__
#include <cmath>
#include <cassert>
#include <iostream>

template<size_t DimCols, size_t DimRows, typename T> class mat;

template<size_t DIM, typename T> struct vec {
	vec() {for (size_t i = DIM; i--; data_[i] = T());}
	T& operator[](const size_t i) {assert(i < DIM); return data_[i];}
	const T& operator[](const size_t i) const  {assert(i < DIM); return data_[i];}
private:
	T data_[DIM];
};

template<typename T> struct vec<2, T> {
	vec(): x(T()), y(T()) {}
	vec(T X, T Y): x(X), y(Y) {}
	template <class u> vec<2, T>(const vec<2, u> &v);
	T& operator[](const size_t i) {assert(i < 2); return i == 0 ? x : y;}
	const T& operator[](const size_t i) const {assert(i < 2); return i == 0 ? x : y;}

	T x, y;
};

template<typename T> struct vec<3, T> {
	vec(): x(T()), y(T()), z(T()) {}
	vec(T X, T Y, T Z): x(X), y(Y), z(Z) {}
	template <class u> vec<3, T>(const vec<3, u> &v);
	T& operator[](const size_t i) {assert(i < 3); return i == 0 ? x : (i == 1 ? y : z);}
	const T& operator[](const size_t i) const {assert(i < 3); return i == 0 ? x : (i == 1 ? y : z);}
	float norm() {return std::sqrt(x*x+y*y+z*z);}
	vec<3, T>& normalize(T l=1) {*this = (*this)*(l/norm()); return *this; }

	T x, y, z;
};



