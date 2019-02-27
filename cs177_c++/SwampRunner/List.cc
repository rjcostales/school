/* Raphael J. S. Costale
 * List.cc
 * 5/5/93
 */

#ifndef LIST_CC
#define LIST_CC

#include <stdlib.h>
#include "List.h"

// constructor & destructors
List::List(List& pList)
{
	if (this != &pList)
	{
		mHead = 0;
		mSize = 0;
		int i = pList.mSize;
		while (i--)
			insert(pList[i]);
	}
}

List::~List()
{
	clear();
}

// Operator & Member Funtions
List& List::operator=(List& pList)
{
	if (this != &pList)
	{
		clear();
		int i = pList.mSize;
		while (i--)
			insert(pList[i]);
	}
	return *this;
}

List List::operator+(List& pList)
{
	List bufList(*this);
	for (int i = 0; i < pList.mSize; i++)
		bufList.append(pList[i]);
	return bufList;
}

Type& List::operator[](int pIndex)
{
	return atIndex(pIndex);
}

bool List::operator==(List pList)
{
	Element *curr = mHead;
if (mSize == pList.mSize)	{
		for (int i = 0; i < mSize; i++)
		{
			if (operator[](i) != pList[i])
				return 0;
			curr = curr->mNext;
		}
		return true;
	}
	return false;
}

bool List::operator!=(List pList)
{
	return !(*this == pList);
}

// List methods
void List::clear()
{
	Element *curr = mHead;
while (mHead)	{
		mHead = mHead->mNext;
delete curr;
		curr = mHead;
	}
	mHead = 0;
	mSize = 0;
}

List& List::insert(Type pData, int pIndex)
{
	Element *curr = mHead, *newElem = new Element(pData);
if (curr)	{
		if ((pIndex >= 0)&&(pIndex <= mSize)){
			if (pIndex) {
				while (--pIndex)
					curr = curr->mNext;
				newElem->mNext = curr->mNext;
				curr->mNext = newElem;
			} else{
				newElem->mNext = mHead;
		mHead = newElem;
		}
		} else
		error("insert(): subscript out of range\n");
	} else
		mHead = newElem;
	mSize++;
return *this;
}

List& List::append(Type pData)
{
	return insert(pData, mSize);
}

Type& List::remove(int pIndex)
{
	Element *curr = mHead, *temp = mHead;
	Type tmpData;
	if (curr){
		if ((pIndex >= 0)&&(pIndex < mSize)){
			if (pIndex){
				while(--pIndex)
					curr = curr->mNext;
				temp = curr->mNext;
				curr->mNext = temp->mNext;
			} else
				mHead = curr->mNext;
			tmpData = temp->mData;
			delete temp;
			mSize--;
		} else
			error("remove(): subscript out of range\n");
	} else
		error("remove(): List is empty\n");
	return tmpData;
}

List& List::purge(Type pData)
{
	Element *temp = mHead, *curr = mHead;
while (curr){
if (curr->mData == pData)	{
			if (curr == mHead)	{
				mHead = curr->mNext;
				delete curr;
				curr = mHead;
			} else{
				temp->mNext = curr->mNext;
				delete curr;
				curr = temp->mNext;
			}
			mSize--;
		} else{
			temp = curr;
			curr = curr->mNext;
		}
	}
	return *this;
}

int List::length()
{
	return mSize;
}

int List::isMember(Type pData)
{
	Element *curr = mHead;
int count = 0;
while (curr) {
if (curr->mData == pData)
	count++;
		curr = curr->mNext;
	}
	return count;
}

Type& List::atIndex(int pIndex)
{
	Element *curr = mHead;
	if (curr) {
		if ((pIndex >= 0)&&(pIndex < mSize)) {
while(pIndex--)
				curr = curr->mNext;
		} else
			error("operator[]: subscript out of range\n");
	} else
		error("operator[]: List is empty\n");
	return curr->mData;
}

void List::error(char *errMessage)
{
	cerr << errMessage;
exit(0);
}

// Friend operator
ostream& operator<<(ostream& pOstream, const List& pList)
{
	List::Element *curr = pList.mHead;
	pOstream << "{";
	while (curr)
		pOstream << curr->mData << ((curr = curr->mNext) ? ", " : "");
	pOstream << "}";
	return pOstream;
}

#endif
