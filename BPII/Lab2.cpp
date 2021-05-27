
/*
Creați listă liniară simplu înlănțuită Pasager cu informația: numele pasagerului, direcția
și ziua plecării. Să se determine numărul de pasageri după ziua
plecării.
*/
#include <iostream>
#include <string.h>
#include <cstring>
#include <cstdlib>
using namespace std;
struct node {string nume;
           string prenume;
           string directia;
           int data;
           int luna;
           int anul;
           node*next;};
void Adaugainlista(node *&Prim, node *&Ultim,int k)
{
  cout << " Introduceti datele despre pasagerul [" << k<<"]" << endl;
  node *p=new node;
  cout<<"introduceti numele ";
  cin>>p->nume;
  cout<<"introduceti prenumele ";
  cin>>p->prenume;
  cout<<"introduceti directia ";
  cin>>p->directia;
  cout<<"introduceti ziua plecarii ";
  cin>>p->data;
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
void Grupacalc(node*X)
{
   int a[31];
    for(int i=0; i<31;i++){
      a[i]=0;
    }
    while (X!=NULL){
      a[X->data]++;
    X=X->next;
                  }
cout<<"Nr de pasageri indepedenta de data este:" <<endl;
for(int i=1; i<31; i++)
if (a[i] != 0)
  cout<<"data " <<i<<" : " <<a[i] << " pasager(i) " <<endl;
 }
void Afisare (node *X){
    while (X != NULL){
        cout<<"Pasageri "<<X->nume<<" " <<X->prenume<<endl;
        X = X->next;
    }
}
int main ()
{
  int n, i;
  node *Prim1=NULL, *Ultim1=NULL, *X, *A, *poz;
  float med;
  cout<<"Introduceti numarul de pasageri = "; cin>>n;
  for (i=1; i<=n; i++)
  {
        Adaugainlista(Prim1, Ultim1,i);
  }
  Afisare(Prim1);
  Grupacalc(Prim1);
  node *Prim2=NULL, *Ultim2=NULL;
  X = Prim1;
  while (X != NULL){
    node *A=new node;
    A->nume = X->nume;
    A->prenume = X->prenume;
    A->next = NULL;
  return 0;
}
}
