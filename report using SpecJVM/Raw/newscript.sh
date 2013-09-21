#!/bin/bash


##run script to output
export currentrun="ZeroVM"
java -version
rm -r $currentrun
mkdir $currentrun
cd $currentrun

mkdir "compiler"
cd "compiler"
cd /home/root/Desktop/SpecVM
java -jar SPECjvm2008.jar -ikv compiler.compiler&
cd -
processID=$(ps -C java -o pid | tail -n1)

while [ "$processID" != "  PID" ]
do
	ps -p $processID -o %cpu |tail -n1 >> cpu.compiler
	ps -p $processID -o %mem |tail -n1 >> mem.compiler
	sleep 2
	processID=$(ps -C java -o pid | tail -n1)
done
mv /home/root/Desktop/SpecVM/results/SPECjvm2008.001 SpecOutput.compiler
cd ..



mkdir "cryptoaes"
cd "cryptoaes"
cd /home/root/Desktop/SpecVM
java -jar SPECjvm2008.jar -ikv crypto.aes&

cd -
processID=$(ps -C java -o pid | tail -n1)

while [ "$processID" != "  PID" ]
do
	ps -p $processID -o %cpu |tail -n1 >> cpu.cryptoaes
	ps -p $processID -o %mem |tail -n1 >> mem.cryptoaes
	sleep 2
	processID=$(ps -C java -o pid | tail -n1)
done
mv /home/root/Desktop/SpecVM/results/SPECjvm2008.001 SpecOutput.cryptoaes
cd ..


mkdir "mpegaudio"
cd "mpegaudio"		
cd /home/root/Desktop/SpecVM
java -jar SPECjvm2008.jar -ikv mpegaudio&

cd -
processID=$(ps -C java -o pid | tail -n1)

while [ "$processID" != "  PID" ]
do
	ps -p $processID -o %cpu |tail -n1 >> cpu.mpegaudio
	ps -p $processID -o %mem |tail -n1 >> mem.mpegaudio
	sleep 2
	processID=$(ps -C java -o pid | tail -n1)
done
mv /home/root/Desktop/SpecVM/results/SPECjvm2008.001 SpecOutput.mpegaudio
cd ..


mkdir "scimark"
cd "scimark"		
cd /home/root/Desktop/SpecVM
java -jar SPECjvm2008.jar -ikv scimark.lu.large&

cd -
processID=$(ps -C java -o pid | tail -n1)

while [ "$processID" != "  PID" ]
do
	ps -p $processID -o %cpu |tail -n1 >> cpu.scimark
	ps -p $processID -o %mem |tail -n1 >> mem.scimark
	sleep 2
	processID=$(ps -C java -o pid | tail -n1)
done
mv /home/root/Desktop/SpecVM/results/SPECjvm2008.001 SpecOutput.scimark
cd ..

cd ..
###exit at the end




##run script to output
export currentrun="Cacao"
java -version -cacao
rm -r $currentrun
mkdir $currentrun
cd $currentrun

mkdir "compiler"
cd "compiler"
cd /home/root/Desktop/SpecVM
java -jar -cacao SPECjvm2008.jar -ikv compiler.compiler&
cd -
processID=$(ps -C java -o pid | tail -n1)

while [ "$processID" != "  PID" ]
do
	ps -p $processID -o %cpu |tail -n1 >> cpu.compiler
	ps -p $processID -o %mem |tail -n1 >> mem.compiler
	sleep 2
	processID=$(ps -C java -o pid | tail -n1)
done
mv /home/root/Desktop/SpecVM/results/SPECjvm2008.001 SpecOutput.compiler
cd ..



mkdir "cryptoaes"
cd "cryptoaes"
cd /home/root/Desktop/SpecVM
java -jar -cacao SPECjvm2008.jar -ikv crypto.aes&

cd -
processID=$(ps -C java -o pid | tail -n1)

while [ "$processID" != "  PID" ]
do
	ps -p $processID -o %cpu |tail -n1 >> cpu.cryptoaes
	ps -p $processID -o %mem |tail -n1 >> mem.cryptoaes
	sleep 2
	processID=$(ps -C java -o pid | tail -n1)
done
mv /home/root/Desktop/SpecVM/results/SPECjvm2008.001 SpecOutput.cryptoaes
cd ..


mkdir "mpegaudio"
cd "mpegaudio"		
cd /home/root/Desktop/SpecVM
java -jar -cacao SPECjvm2008.jar -ikv mpegaudio&

cd -
processID=$(ps -C java -o pid | tail -n1)

while [ "$processID" != "  PID" ]
do
	ps -p $processID -o %cpu |tail -n1 >> cpu.mpegaudio
	ps -p $processID -o %mem |tail -n1 >> mem.mpegaudio
	sleep 2
	processID=$(ps -C java -o pid | tail -n1)
done
mv /home/root/Desktop/SpecVM/results/SPECjvm2008.001 SpecOutput.mpegaudio
cd ..


mkdir "scimark"
cd "scimark"		
cd /home/root/Desktop/SpecVM
java -jar -cacao SPECjvm2008.jar -ikv scimark.lu.large&

cd -
processID=$(ps -C java -o pid | tail -n1)

while [ "$processID" != "  PID" ]
do
	ps -p $processID -o %cpu |tail -n1 >> cpu.scimark
	ps -p $processID -o %mem |tail -n1 >> mem.scimark
	sleep 2
	processID=$(ps -C java -o pid | tail -n1)
done
mv /home/root/Desktop/SpecVM/results/SPECjvm2008.001 SpecOutput.scimark
cd ..

cd ..
###exit at the end



##run script to output
export currentrun="JamVM"
java -version -jamvm
rm -r $currentrun
mkdir $currentrun
cd $currentrun

mkdir "compiler"
cd "compiler"
cd /home/root/Desktop/SpecVM
java -jar -jamvm SPECjvm2008.jar -ikv compiler.compiler&
cd -
processID=$(ps -C java -o pid | tail -n1)

while [ "$processID" != "  PID" ]
do
	ps -p $processID -o %cpu |tail -n1 >> cpu.compiler
	ps -p $processID -o %mem |tail -n1 >> mem.compiler
	sleep 2
	processID=$(ps -C java -o pid | tail -n1)
done
mv /home/root/Desktop/SpecVM/results/SPECjvm2008.001 SpecOutput.compiler
cd ..



mkdir "cryptoaes"
cd "cryptoaes"
cd /home/root/Desktop/SpecVM
java -jar -jamvm SPECjvm2008.jar -ikv crypto.aes&

cd -
processID=$(ps -C java -o pid | tail -n1)

while [ "$processID" != "  PID" ]
do
	ps -p $processID -o %cpu |tail -n1 >> cpu.cryptoaes
	ps -p $processID -o %mem |tail -n1 >> mem.cryptoaes
	sleep 2
	processID=$(ps -C java -o pid | tail -n1)
done
mv /home/root/Desktop/SpecVM/results/SPECjvm2008.001 SpecOutput.cryptoaes
cd ..


mkdir "mpegaudio"
cd "mpegaudio"		
cd /home/root/Desktop/SpecVM
java -jar -jamvm SPECjvm2008.jar -ikv mpegaudio&

cd -
processID=$(ps -C java -o pid | tail -n1)

while [ "$processID" != "  PID" ]
do
	ps -p $processID -o %cpu |tail -n1 >> cpu.mpegaudio
	ps -p $processID -o %mem |tail -n1 >> mem.mpegaudio
	sleep 2
	processID=$(ps -C java -o pid | tail -n1)
done
mv /home/root/Desktop/SpecVM/results/SPECjvm2008.001 SpecOutput.mpegaudio
cd ..


mkdir "scimark"
cd "scimark"		
cd /home/root/Desktop/SpecVM
java -jar -jamvm SPECjvm2008.jar -ikv scimark.lu.large&

cd -
processID=$(ps -C java -o pid | tail -n1)

while [ "$processID" != "  PID" ]
do
	ps -p $processID -o %cpu |tail -n1 >> cpu.scimark
	ps -p $processID -o %mem |tail -n1 >> mem.scimark
	sleep 2
	processID=$(ps -C java -o pid | tail -n1)
done
mv /home/root/Desktop/SpecVM/results/SPECjvm2008.001 SpecOutput.scimark
cd ..

cd ..
###exit at the end





##run script to output
export PATH=/home/root/Desktop/ejre1.7.0_21/bin:$PATH
export currentrun="Oracle"
java -version
rm -r $currentrun
mkdir $currentrun
cd $currentrun

mkdir "compiler"
cd "compiler"
cd /home/root/Desktop/SpecVM
java -jar SPECjvm2008.jar -ikv compiler.compiler&
cd -
processID=$(ps -C java -o pid | tail -n1)

while [ "$processID" != "  PID" ]
do
	ps -p $processID -o %cpu |tail -n1 >> cpu.compiler
	ps -p $processID -o %mem |tail -n1 >> mem.compiler
	sleep 2
	processID=$(ps -C java -o pid | tail -n1)
done
mv /home/root/Desktop/SpecVM/results/SPECjvm2008.001 SpecOutput.compiler
cd ..


mkdir "cryptoaes"
cd "cryptoaes"
cd /home/root/Desktop/SpecVM
java -jar SPECjvm2008.jar -ikv crypto.aes&

cd -
processID=$(ps -C java -o pid | tail -n1)

while [ "$processID" != "  PID" ]
do
	ps -p $processID -o %cpu |tail -n1 >> cpu.cryptoaes
	ps -p $processID -o %mem |tail -n1 >> mem.cryptoaes
	sleep 2
	processID=$(ps -C java -o pid | tail -n1)
done
mv /home/root/Desktop/SpecVM/results/SPECjvm2008.001 SpecOutput.cryptoaes
cd ..


mkdir "mpegaudio"
cd "mpegaudio"		
cd /home/root/Desktop/SpecVM
java -jar SPECjvm2008.jar -ikv mpegaudio&

cd -
processID=$(ps -C java -o pid | tail -n1)

while [ "$processID" != "  PID" ]
do
	ps -p $processID -o %cpu |tail -n1 >> cpu.mpegaudio
	ps -p $processID -o %mem |tail -n1 >> mem.mpegaudio
	sleep 2
	processID=$(ps -C java -o pid | tail -n1)
done
mv /home/root/Desktop/SpecVM/results/SPECjvm2008.001 SpecOutput.mpegaudio
cd ..


mkdir "scimark"
cd "scimark"		
cd /home/root/Desktop/SpecVM
java -jar SPECjvm2008.jar -ikv scimark.lu.large&

cd -
processID=$(ps -C java -o pid | tail -n1)

while [ "$processID" != "  PID" ]
do
	ps -p $processID -o %cpu |tail -n1 >> cpu.scimark
	ps -p $processID -o %mem |tail -n1 >> mem.scimark
	sleep 2
	processID=$(ps -C java -o pid | tail -n1)
done
mv /home/root/Desktop/SpecVM/results/SPECjvm2008.001 SpecOutput.scimark
cd ..

cd ..
###exit at the end
