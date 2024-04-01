export SYSTEM=gfortran
export OMP_NUM_THREADS=1

rm -rf sedov

mkdir sedov

cp blast.setup sedov
cp blast.in sedov
cd sedov

sh ../scripts/writemake.sh sedov > Makefile
make IND_TIMESTEPS=no
make setup IND_TIMESTEPS=no

./phantomsetup blast | uniq > out_phantom_setup
./phantom blast.in | uniq > out_phantom