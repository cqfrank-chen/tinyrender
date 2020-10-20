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

template<size_t DIM, typename T> T operator*(const vec<DIM, T>& lhs, const vec<DIM, T>& rhs) {
	T ret = T();
	for (size_t i = DIM; i--; ret += lhs[i]*rhs[i]);
	return ret;
}

template<size_t DIM, typename T> vec<DIM,T> operator+(const vec<DIM, T> lhs, const vec<DIM, T>& rhs) {
	for (size_t i = DIM; i--; lhs[i] += rhs[i]);
	return lhs;
}

template<size_t DIM, typename T> vec<DIM,T> operator-(const vec<DIM, T> lhs, const vec<DIM, T>& rhs) {
	for (size_t i = DIM; i--; lhs[i] -= rhs[i]);
	return lhs;
}

template<size_t DIM, typename T, typename U> vec<DIM,T> operator*(const vec<DIM, T> lhs, const U& rhs) {
	for (size_t i = DIM; i--; lhs[i] *= rhs);
	return lhs;
}

template<size_t DIM, typename T, typename U> vec<DIM,T> operator/(const vec<DIM, T> lhs, const U& rhs) {
	for (size_t i = DIM; i--; lhs[i] /= rhs);
	return lhs;
}

template<size_t LEN, size_t DIM, typename T> vec<LEN,T> embed(const vec<DIM, T> &v, T fill=1) {
	vec<LEN, T> ret;
	for (size_t i = LEN; i--; ret[i] = (i< DIM ? v[i]:fill));
	return ret;
}

template<size_t LEN, size_t DIM, typename T> vec<LEN, T> proj(const vec<DIM, T> &v) {
	vec<LEN, T> ret;
	for (size_t i = LEN; i--; ret[i] = v[i]);
	return ret;
}

template<typename T> vec<3, T> cross(vec<3, T> v1, vec<3, T> v2) {
	return vec<3, T>(v1.y*v2.z-v1.z*v2.y, v1.z*v2.x-v1.x*v2.z, v1.x*v2.y-v1.y*v2.x);
}

template<size_t DIM, typename T> std::ostream& operator<<(std::ostream& out, vec<DIM, T>& v) {
	for (unsigned int i = 0; i < DIM; i++)
		out << v[i] << " ";
	return out;
}

template<size_t DIM, typename T> struct dt {
	static T det(const mat<DIM, DIM, T>& src) {
		T ret = 0;
		for (size_t i = DIM; i--; ret += src[0][i]*src.cofactor(0, i));
		return ret;
	}
};

template<typename T> struct dt<1, T> {
	static T det(const mat<1,1,T>& src) {
		return src[0][0];
	}
};

template<size_t DimRows, size_t DimCols, typename T> class mat {
	vec<DimCols, T> rows[DimRows];
public:
	mat() {}

	vec<DimCols, T>& operator[] (const size_t idx) {
		assert(idx < DimRows);
		return rows[idx];
	}

	const vec<DimCols, T>& operator[] (const size_t idx) const {
		assert(idx < DimRows);
		return rows[idx];
	}

	vec<DimRows, T> col(const size_t idx) const {
		assert(idx < DimCols);
		vec<DimRows, T> ret;
		for (size_t i = DimRows; i--; ret[i] = rows[i][idx]);
		return ret;
	}
	
	void set_col(size_t idx, vec<DimRows, T> v) {
		assert(idx < DimCols);
		for (size_t i = DimRows; i--; rows[i][idx] = v[i]);
	}

	static mat<DimRows, DimCols, T> identity() {
		mat<DimRows, DimCols, T> ret;
		for (size_t i = DimRows; i--; )
			for (size_t j = DimCols; j--; ret[i][j] = (i == j));
	}

	T det() const {
		return dt<DimCols, T>::det(*this);
	}

	mat<DimRows-1, DimCols-1, T> get_minor(size_t row, size_t col) const {
		mat<DimRows-1, DimCols-1, T> ret;
		for (size_t i = DimRows-1; i--; )
			for (size_t j = DimCols-1; j--; ret[i][j] = rows[i<row?i:i+1][j<col?j:j+1]);
		return ret;
	}

	T cofactor(size_t row, size_t col) const {
		return get_minor(row, col).det()*((row+col)&2 ? -1:1);
	}

	mat<DimRows, DimCols, T> adjugate() const {
		mat<DimRows, DimCols, T> ret;
		for (size_t i = DimRows; i--; )
			for (size_t j = DimCols; j--; ret[i][j] = cofactor(i, j));
		return ret;
	}

	mat<DimRows, DimCols, T> invert_transpose() {
		mat<DimRows, DimCols, T> ret = adjugate();
		T tmp = ret[0]*rows[0];
		return ret / tmp;
	}
};
