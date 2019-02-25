/* Raphael J. S. Costale
 * List.h
 * 5/5/93
 *
 * List class with Coorinate elements
 */

#ifndef LIST_H
#define LIST_H

#include <iostream>
using namespace std;

#include "Coordinate.h"

typedef Coord Type;
class List
{
public:
	// Constructors & Destructors
	List() { mHead = 0; mSize = 0; }
	List(const List&);
	List(List&);
   ~List();

	// Operator & Member Funtions
	List& operator=(List&);
	List operator+(List&);
	Type& operator[](int);
	bool operator==(List);
	bool operator!=(List);

	int length();
	int isMember(Type);
	void clear();
	List& append(Type);
	List& insert(Type, int pIndex = 0);
	Type& remove(int pIndex = 0);
	List& purge(Type);

	friend ostream& operator<<(ostream&, const List&);

private:
	int mSize;
	class Element
	{
	public:
		Element(Type pData) { mData = pData; mNext = 0; };
		Type mData;
		Element *mNext;
	};
	Element *mHead;
	Type& atIndex(int);
	void error(char *);
};

#endif
