package dataapi.authz

import data.kubernetes.assets

rule[{"name": "Only allow administrator access to unsafe assets", "action": "BlockResource"}]{
       input.situationStatus == "unsafe-high"
       input.request.role != "Admin"
}


