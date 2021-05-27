/*Se citește  două numere foarte mari. Să se elaboreze un program pentru
prelucrarea numerelor, folosind următoarele subprograme:
a. crearea listelor care conțin cifrele a două numere foarte mari;
b. calcularea sumei, a diferenței și produsului numerelor;
c. compararea a două numere (subprogramul trebuie să verifice dacă cele două
numere sunt egale, iar dacă nu sunt egale, să precizeze care număr este mai
mare).*/
#include <iostream>
#include <string.h>
#include <cstring>
#include <stdlib.h>
#include<math.h>
using namespace std;
struct node {int cifra;
	         node *next;};
struct node1 {int cifra1;
	         node1 *next;};
void AddLista(node *&Prim, node *&Ultim,int qq)
{
  node *p=new node;
  p->cifra=qq;
  p->next=NULL;
  if (Prim == NULL) {
    Prim = p;
    Ultim = p;
  }
  else {
    Ultim->next = p;
    Ultim = p;
  }
}
void AddLista1(node1 *&Prim, node1 *&Ultim, int i)
{
  node1 *p=new node1;
  p->cifra1=i;
  p->next=NULL;
  if (Prim == NULL) {
    Prim = p;
    Ultim = p;
  }
  else {
    Ultim->next = p;
    Ultim = p;
  }
}

void Afisare (node *X){
    while (X != NULL){
        cout<<"numerele primului numar "<<X->cifra<<endl;
        X = X->next;
    }
}
void Afisare1 (node1 *X1){
    while (X1 != NULL){
        cout<<"numerele al doilea numar "<<X1->cifra1<<endl;
        X1 = X1->next;
    }
}
int main ()
{
  int n = 0;
  long int nr = 0;
  int i = 0;
  int qq = 0;
  long int q = 0;
  int Suma, Difer, Pro, max1 = 0;
  node *Prim1=NULL, *Ultim1=NULL, *X, *A, *poz;
  node1 *Prim3=NULL, *Ultim3=NULL, *X1, *A1, *poz1;
  cout<<"Introduceti numarul = "; cin>>nr;
  cout<<"Introduceti numarul al doilea = "; cin>>q;
   Suma = nr+q;
   if (nr>q)
   Difer = nr-q;
   else
    Difer = q-nr;
  Pro=nr*q;
  if (nr>q)max1++;
  else
    if(nr=q)max1--;
  while(nr!=0)
  {
    qq = nr % 10;
        AddLista(Prim1, Ultim1,qq);
    nr/=10;
  }
  while(q!=0)
  {
    i = q % 10;
        AddLista1(Prim3, Ultim3,i);
    q /=10;
  }
  Afisare(Prim1);
  Afisare1(Prim3);
   cout<<"Suma numerelor este egala cu: "<<Suma<<endl;
   cout<<"Diferenta numerelor este egal cu: "<<Difer<<endl;
   cout<<"Produsul numerelor este egal cu: "<<Pro<<endl;
   if (max1>0)
    cout<<"Numarul 1 este mai mare"<<endl;
  else
    if(max1<0)
    cout<<"Numere sunt egale"<<endl;
   else
    cout<<"Numarul al 2 este mai mare"<<endl;
  node *Prim2=NULL, *Ultim2=NULL;
  X = Prim1;
  ///////////////////

  return 0;
}
