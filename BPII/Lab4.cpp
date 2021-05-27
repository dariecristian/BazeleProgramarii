/*În nodurile unui arbore binar sunt memorate numere întregi. Să se elaboreze un
program care să realizeze următoarele:
a. Creează arborele binar prin introducerea numerelor de la tastatură.
b. Afișează informațiile  din frunzele ale acestui arbore binar.
c. Calculează suma numerelor negative din nodurile care are exact doi succesori.
d. Afișează nodurile cu  numerele impare.
e. Afișează numărul aflat în cel mai din dreapta nod.*/
#include <fstream>
#include <iostream>
#include <string.h>
using namespace std;

struct nod {int inf;
	        nod *left, *right;};
nod *Tree;

void CreareArb(nod *&T)
{
  int N;
  cin>>N;
  if (N == 0)
  {T = NULL;}
   else
   {
     T=new nod;
     T->inf = N;
     cout<<"Indicati descendentul sting a nodului "<<N<<": ";
     CreareArb(T->left);
     cout<<"Indicati descendentul drept a nodului "<<N<<": ";
     CreareArb(T->right);
   }
}

void Preordine (nod *T)
{
   if (T != NULL)
   {
     cout<<T->inf<<" ";
     Preordine(T->left);
     Preordine(T->right);
   }
}

/*
«4»: Afișează elementele din frunzele arborelui Т.
*/

void AfisFrunzeArb(nod *T){
    if (T != NULL){
        if ((T->left==NULL)&&(T->right==NULL))
            cout<<T->inf<<" ";
        AfisFrunzeArb(T->left);
        AfisFrunzeArb(T->right);
    }
}
void AfisDreapta(nod *T){
    if (T != NULL)
        if ((T->right==NULL))
            cout<<T->inf<<" ";
        AfisDreapta(T->left);
}

/*
6. Calculează suma numerelor impare
*/

int SumImpar(nod* T)
{
	if (T != NULL){
		if (T->inf % 2 == 1)
			cout << T->inf << endl;
		else
			return SumImpar(T->left) + SumImpar(T->right);}
	else
		return 0;
}

/*
7. Calculează suma numerelor negative din nodurile care are doi fii.
*/
int SumNeg(nod* T)
{
	if (T == NULL) return 0;
	else
		if ((T->inf < 0) && ((T->left != NULL) && (T->right != NULL)))
			return T->inf + SumNeg(T->left) + SumNeg(T->right);
		else
			return SumNeg(T->left) + SumNeg(T->right);
}



int main(){
    int Key, el;
    Tree = NULL;
    cout<<"Indicati datele radacinii: ";
    CreareArb(Tree);
    cout<<"------------------------------------------------------------------------------"<<endl;
    Preordine(Tree);
    cout<<endl<<"------------------------------------------------------------------------------"<<endl;
    while (Key != 5){
        cout<<"1. Afiseaza informatiile  din frunzele ale acestui arbore binar."<<endl;
        cout<<"2. Calculeaza suma numerelor negative din nodurile care au numai un succesor."<<endl;
        cout<<"3. Afiseaza suma nr impare."<<endl;
        cout<<"4. Afiseaza numarul aflat in cel mai din dreapta nod."<<endl;
        cout<<"5. Iesire"<<endl;
        cin>>Key;
        switch (Key){
            case 1:{
                AfisFrunzeArb(Tree);
                cout << endl;
                break;
            }
            case 2:{
                cout << "Suma numerelor negative care are doi fii: "<<SumNeg(Tree)<<endl;
                break;
            }
            case 3:{
                cout<<"Suma nr impare - "<<SumImpar(Tree)<<endl;
                break;
            }
            case 4:{
                AfisDreapta(Tree);
                cout << endl;
            }
           }
        }
    return 0;

}




