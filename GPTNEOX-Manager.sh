## (C) Flames ASI (2022)
echo "The ultimate baking tool for GPTNEOX"
echo "------------------------------------"
echo "Would you like to install gptneox from the official repository?"
echo "Okay what cpu do you use select one"
echo "1) ARMv7"
echo "2) ARMv8"
echo "3) Intel x86"
echo "4) Intel x64"
echo "5) M1"
echo "6) M1 PRO"
echo "7) M1 MAX"

## make a choice input to detect wether your cpu or gpu is tailored for gptneox and tensorflow
## if not tailor the right code
read choice
if [ $choice -eq 1 ]
then
    echo "You have selected ARMv7"
    echo "Downloading GPTNEOX"
git clone "https://github.com/EleutherAI/gpt-neox"
cd gpt-neox
echo "Downloading Tensorflow"
## if yo uselected armv7
## install the m1 version of tensorflow
wget https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-cpu-mac-armv7.so


## install tensorflow to your pc if selected armv7
sudo cp libtensorflow-cpu-linux-armv7.so /usr/local/lib/
sudo ldconfig
## release it onto your pc
sudo cp gptneox-manager.sh /usr/local/bin/
sudo chmod +x /usr/local/bin/gpt
wget https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-cpu-mac-armv7.so

## install the m1 pro version
elif [ $choice -eq 2 ]
then
    echo "You have selected ARMv8"
    echo "Downloading GPTNEOX"
git clone "eleutherai/gpt-neox"
cd gpt-neox
echo "Downloading Tensorflow"
## if yo uselected armv8
## install the m1 pro version of tensorflow
wget https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-cpu-mac-armv8.so
## if any of these are not true close
## install tensorflow to your pc if selected armv8
sudo cp libtensorflow-cpu-linux-armv8.so /usr/local/lib/
sudo ldconfig
## release it onto your pc
sudo cp gptneox-manager.sh /usr/local/bin/
sudo chmod +x /usr/local/bin/gpt
wget https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-cpu-mac-armv8.so
## exit the console and make a gui that shows a progress bar load and fade out
echo "Exiting.."
sleep 2
echo "Done"
elif [ $choice -eq 3 ]
then
    echo "You have selected Intel x86"
    echo "Downloading GPTNEOX"
git clone "eleutherai/gpt-neox"
cd gpt-neox
echo "Downloading Tensorflow"
## if yo uselected intel x86
## install the m1 version of tensorflow
wget https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-cpu-linux-x86_64.so
## install tensorflow to your pc if selected intel x86
sudo cp libtensorflow-cpu-linux-x86_64.so /usr/local/lib/
sudo ldconfig
## release it onto your pc
sudo cp gptneox-manager.sh /usr/local/bin/
sudo chmod +x /usr/local/bin/gpt            
wget https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-cpu-linux-x86_64.so
## exit the console and make a gui that shows a progress bar load and fade out
echo "Exiting.."
sleep 2
echo "Done"
elif [ $choice -eq 4 ]
then
    echo "You have selected Intel x64"
    echo "Downloading GPTNEOX"
git clone "eleutherai/gpt-neox"
cd gpt-neox
echo "Downloading Tensorflow"
## if yo uselected intel x64
## install the m1 version of tensorflow
wget https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-cpu-linux-x86_64.so
## install tensorflow to your pc if selected intel x64
sudo cp libtensorflow-cpu-mac-x86_64.so /usr/local/lib/
sudo ldconfig
## release it onto your pc
sudo cp gptneox-manager.sh /usr/local/bin/
## run a system check to see if tensorflow works
sudo chmod +x /usr/local/bin/gpt
wget https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-cpu-mac-x86_64.so
## exit the console and make a gui that shows a progress bar load and fade out
## check to see if tensorflow works

## make all the choices tailored to your designated processer chip
elif [ $choice -eq 5 ]
then
    echo "You have selected M1"
    echo "Downloading GPTNEOX"
git clone "eleutherai/gpt-neox"
cd gpt-neox
echo "Downloading Tensorflow"
## if yo uselected m1
## install the m1 version of tensorflow
wget https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-cpu-mac-x86_64.so
## install tensorflow to your pc if selected m1
sudo cp libtensorflow-cpu-mac-x86_64.so /usr/local/lib/
sudo ldconfig
## release it onto your pc
sudo cp gptneox-manager.sh /usr/local/bin/
sudo chmod +x /usr/local/bin/gpt
wget https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-cpu-mac-x86_64.so
echo "Checking bytes of tensorflow"


## do the rest of the code
elif [ $choice -eq 6 ]
then
    echo "You have selected M1 PRO"
    echo "Downloading GPTNEOX"
git clone "eleutherai/gpt-neox"
cd gpt-neox
wget https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-cpu-mac-x86_64.so
sudo cp libtensorflow-cpu-mac-x86_64.so /usr/local/lib/
sudo ldconfig
sudo cp gptneox-manager.sh /usr/local/bin/
sudo chmod +x /usr/local/bin/gpt
wget https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-cpu-mac-x86_64.so
echo "Checking bytes of tensorflow"

sleep 2
tensorflow --version
echo "Exiting.."

### make a error checker
else
    echo "You have selected an invalid option"
    echo "Exiting.."
    sleep 2
    echo "Done"
fi