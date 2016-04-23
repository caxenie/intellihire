#include "fuzzy_simulator_intellihire_capi_host.h"
static fuzzy_simulator_intellihire_host_DataMapInfo_T root;
static int initialized = 0;
rtwCAPI_ModelMappingInfo *getRootMappingInfo()
{
    if (initialized == 0) {
        initialized = 1;
        fuzzy_simulator_intellihire_host_InitializeDataMapInfo(&(root), "fuzzy_simulator_intellihire");
    }
    return &root.mmi;
}

rtwCAPI_ModelMappingInfo *mexFunction() {return(getRootMappingInfo());}
