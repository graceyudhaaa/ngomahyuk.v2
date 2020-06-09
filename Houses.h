#pragma once
#include <string>
using namespace std;

// Kos


class Kos{
public:
    int hargaExp,hargaCheap, jumlahKamar;
    string gender, alamat, deskripsi;

    Kos(int hargaExp, int hargaCheap, int jumlahKamar, string gender, string alamat, string deskripsi){
        this->hargaExp = hargaExp;
        this->hargaCheap = hargaCheap;
        this->jumlahKamar = jumlahKamar;
        this->gender = gender;
        this->alamat = alamat;
        this->deskripsi = deskripsi;
    }
};

class Kontrakan{
public:
    int harga, jumlahKamar;
    string gender, alamat, deskripsi;

    Kontrakan(int harga, int jumlahKamar, string gender, string alamat, string deskripsi){
        this->harga = harga;
        this->jumlahKamar = jumlahKamar;
        this->gender = gender;
        this->alamat = alamat;
        this->deskripsi = deskripsi;
    }
};
