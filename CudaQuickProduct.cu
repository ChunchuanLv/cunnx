#include "utils.h"



__global__ void mv(
float *m,
float *v,
float *o,
int size0,int size1) {

    
};

__global__ void CudaQUICK_PRODUCT_kernel(
THCState *state,
float *input1,
float *input2,
float *output,
int size0,int size1,int c = 2) {
if (c==0) return;
    c--;
const  float alpha = 1.0;
const  float beta = 0.0;
cublasSgemv(state->currentBlasHandle, CUBLAS_OP_N, size0, size1,   & alpha,input1+threadIdx.x, 1,input2+blockIdx.x*blockDim.x+threadIdx.x, 1,& beta, output+blockIdx.x*blockDim.x+threadIdx.x,1);
 //   CudaQUICK_PRODUCT_kernel<<<size0, size1>>>(state,input1,input2,output,size0,size1,c)
    
};


static int  CudaQUICK_PRODUCT(lua_State *L)
{
THCudaTensor *input1 = (THCudaTensor*)luaT_checkudata(L, 1, "torch.CudaTensor");
THCudaTensor *input2 = (THCudaTensor*)luaT_checkudata(L, 2, "torch.CudaTensor");
THCudaTensor *output = (THCudaTensor*)luaT_checkudata(L, 3, "torch.CudaTensor");
int length1 = luaL_checkint(L, 4);
int length2 = luaL_checkint(L, 5);
int length3 = luaL_checkint(L, 6);
THCState *state = getCutorchState(L);

int size0 = input1->size[0];
int size1 = input1->size[1];
CudaQUICK_PRODUCT_kernel <<<length1, length2>>>(
state,
THCudaTensor_data(state,input1),
THCudaTensor_data(state,input2),
THCudaTensor_data(state,output),size0,size1
);
/*
const  float alpha = 1.0;
const  float beta = 0.0;
cublasSgemv(state->currentBlasHandle, CUBLAS_OP_N, size0, size1,   & alpha,THCudaTensor_data(state,input1), 1,THCudaTensor_data(state,input2), 1,& beta,THCudaTensor_data(state,output),1);
*/
THCudaCheck(cudaGetLastError());
return 1;
}

static const struct luaL_Reg cunnx_CudaQuickProduct__ [] = {
{"CudaQuickProduct_updateOutput", CudaQUICK_PRODUCT},
{NULL, NULL}
};

static void cunnx_CudaQuickProduct_init(lua_State *L)
{
luaT_pushmetatable(L, "torch.CudaTensor");
luaT_registeratname(L, cunnx_CudaQuickProduct__, "nn");
lua_pop(L,1);
}
