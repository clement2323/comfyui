#Petit warning, ne pas rerouter les repertoire ipadapter et instantid dans les extra config paths, ça fout le bordel, ne rerouter que les "classiques" vers app/models (sinon ça cherche dans output)
# Par la suite les installations vont directement taper au bon endroit (models/ipadapter et models/instantid)

kubectl cp RMSDXL_Photo.safetensors comfyui-deployment-5c444bcf7b-mf9hb:/app/models/loras/RMSDXL_Photo.safetensors
kubectl cp realismEngineSDXL_v30VAE.safetensors comfyui-deployment-5c444bcf7b-mf9hb:/app/models/checkpoints/realismEngineSDXL_v30VAE.safetensors
kubectl cp analogMadness_v70.safetensors comfyui-deployment-5c444bcf7b-mf9hb:/app/models/checkpoints/analogMadness_v70.safetensors

 mc cp s3/cguillo/

command:
        - /bin/sh
        - -c
        - |
          apt update
          apt install -y g++
          pip install insightface
          pip install onnxruntime
          pip install onnxruntime-gpu


 kubectl exec -it comfyui-deployment-f564fd44d-hdhdk -- /bin/bash
 

kubectl cp <namespace>/<pod>:/path/to/remote/file - | pv > output


sudo apt-get update
sudo apt-get install pv
kubectl cp ./model.safetensors comfyui-deployment-f564fd44d-qsfh6:/content/models/model.safetensors - | pv > output
kubectl cp comfyui-deployment-f564fd44d-qsfh6:/content/models/model.safetensors ./model.safetensors -o tar | pv > output
kubectl exec comfyui-deployment-f564fd44d-qsfh6 -- cat /content/models/model.safetensors | pv 
# RAJOUTER le GIT CLONE etc.. pour comfy manager !

kubectl exec -it comfyui-deployment-6fb74675cf-67npm -- bash
mkdir -p /app/output/checkpoints
kubectl cp model.safetensors comfyui-deployment-6fb74675cf-67npm:/app/output/checkpoints
