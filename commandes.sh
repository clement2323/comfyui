 kubectl exec -it comfyui-deployment-7bd65765c6-xs5tq -- /bin/bash
 cd ../
 cd content/models
 
 # -> le ckpt :) -> monte un volume pour ça ?
 https://civitai.com/api/download/models/66991?type=Model&format=SafeTensor&size=full&fp=fp16
 curl https://civitai.com/api/download/models/66991?type=Model&format=SafeTensor&size=full&fp=fp16
 ou wget et renommer le fichier

 kubectl cp ./model.safetensors comfyui-deployment-f564fd44d-hdhdk:/content/models/model.safetensors