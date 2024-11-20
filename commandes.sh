 kubectl exec -it comfyui-deployment-7bd65765c6-xs5tq -- /bin/bash
 cd ../
 cd content/models
 
 # -> le ckpt :) -> monte un volume pour ça ?
 wget https://civitai.com/api/download/models/66991?type=Model&format=SafeTensor&size=full&fp=fp16
 
 J'ai tené de renommer le fichier au pire je l'injecterai dans minion à partir de mon pc .

 kubectl cp ./model.safetensors comfyui-deployment-f564fd44d-hdhdk:/content/models/model.safetensors

 le kubectl ne march epas bien pour des problemes de droit semble t'il que j'ai essayé de contourner avec une spec dans le deployment