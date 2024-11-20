 kubectl exec -it comfyui-deployment-f564fd44d-hdhdk -- /bin/bash
 cd ../
 cd content/models
 
 # -> le ckpt :) -> monte un volume pour ça ?
 wget https://civitai.com/api/download/models/66991?type=Model&format=SafeTensor&size=full&fp=fp16
 
 J'ai tenté de renommer le fichier au pire je l'injecterai dans minion à partir de mon pc .

 kubectl cp ./model.safetensors comfyui-deployment-f564fd44d-hdhdk:/content/models/model.safetensors

 #le kubectl ne marchait  pas bien pour des problemes de droit semble t'il que j'ai essayé de contourner avec une spec dans le deployment là ça marche
 le kubectl marche !! ne manqyue plus qu'yun vrai téléchargement de modele ?
