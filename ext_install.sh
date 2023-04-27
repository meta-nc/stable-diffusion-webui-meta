# install extensions
printf "Installing extensions...\n" &&\
cd ./extensions &&\
git clone https://github.com/dustysys/ddetailer &&\
git clone https://github.com/adieyal/sd-dynamic-prompts &&\
git clone https://github.com/nonnonstop/sd-webui-3d-open-pose-editor.git &&\
git clone https://github.com/Mikubill/sd-webui-controlnet.git &&\
git clone https://github.com/AlUlkesh/stable-diffusion-webui-images-browser.git &&\
git clone https://github.com/36DB/stable-diffusion-webui-localization-ko_KR &&\
git clone https://github.com/ilian6806/stable-diffusion-webui-state.git &&\
git clone https://github.com/pkuliyi2015/multidiffusion-upscaler-for-automatic1111 &&\
git clone https://github.com/ashen-sensored/stable-diffusion-webui-two-shot.git &&\


# install controlnet models 
printf "Installing Controlnet Models...\n" &&\
cd ./sd-webui-controlnet/models
wget https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/control_sd15_canny.pth &&\
wget https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/control_sd15_depth.pth &&\
wget https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/control_sd15_openpose.pth &&\
wget https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/control_sd15_scribble.pth &&\
wget https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/control_sd15_seg.pth &&\
printf "Done!\n" 
