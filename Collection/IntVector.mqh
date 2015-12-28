//+------------------------------------------------------------------+
//|                                                    IntVector.mqh |
//|                                          Copyright 2015, Li Ding |
//|                                             http://dingmaotu.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2015, Li Ding"
#property link      "http://dingmaotu.com"
#property strict
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
class IntVector
  {
private:
   int               m_a[];
protected:
   void              resize(int size);
public:
                     IntVector();
                     IntVector(int size);
                    ~IntVector();

   void              push(int val);
   int               pop();
   int               peek();
   void              clear();
   int               get(int i) const;
   void              set(int i,int val);
   int               size() const;
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
IntVector::IntVector(void)
  {
   resize(0);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
IntVector::IntVector(int size)
  {
   resize(size);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
IntVector::~IntVector()
  {
   resize(0);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
IntVector::resize(int size)
  {
   ArrayResize(m_a,size,100);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int IntVector::get(int i) const
  {
   return m_a[i];
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void IntVector::set(int i,int val)
  {
   m_a[i]=val;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int IntVector::size() const
  {
   return ArraySize(m_a);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void IntVector::push(int val)
  {
   int size=size();
   resize(size+1);
   m_a[size]=val;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int IntVector::pop()
  {
   int size=size();
   if(size>0)
     {
      int val=m_a[size-1];
      resize(size-1);
      return val;
     }
   else
     {
      return NULL;
     }
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int IntVector::peek()
  {
   int size=size();
   if(size>0)
     {
      return m_a[size()-1];
     }
   else
     {
      return NULL;
     }
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void IntVector::clear(void)
  {
   resize(0);
  }
//+------------------------------------------------------------------+
