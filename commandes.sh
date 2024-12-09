 kubectl exec -it comfyui-deployment-f564fd44d-hdhdk -- /bin/bash
 cd ../
 cd content/models
 
 # -> le ckpt :) -> monte un volume pour ça ?
 wget https://civitai.com/api/download/models/66991?type=Model&format=SafeTensor&size=full&fp=fp16
 
 J'ai tenté de renommer le fichier au pire je l'injecterai dans minion à partir de mon pc .
 kubectl cp ./model.safetensors comfyui-deployment-f564fd44d-qsfh6:/content/models/checkpoints/model.safetensors
 
 #le kubectl ne marchait  pas bien pour des problemes de droit semble t'il que j'ai essayé de contourner avec une spec dans le deployment là ça marche
 le kubectl marche !! ne manqyue plus qu'yun vrai téléchargement de modele ?
# rajouter le manager

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
