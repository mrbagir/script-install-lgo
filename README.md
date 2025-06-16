# script-install-lgo

Script otomatis untuk menginstal Go kernel (`lgo`) agar dapat digunakan di Jupyter Notebook (Linux/WSL).

## Cara Instalasi

```bash
wget https://raw.githubusercontent.com/<username>/script-install-lgo/main/install_lgo.sh -O install_lgo.sh
bash install_lgo.sh
```

Setelah itu jalankan Jupyter:

```bash
jupyter notebook
```

Pilih golang kernel dan jalankan kode Go langsung di notebook.
