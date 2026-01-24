// #include <torch/serialize/tensor.h>
// #include <ATen/cuda/CUDAContext.h>
// #include <vector>
// #include <THC/THC.h>

// #include "sampling_gpu.h"

// extern THCState *state;
// #define CHECK_CUDA(x) do { \
//   if (!x.type().is_cuda()) { \
//     fprintf(stderr, "%s must be CUDA tensor at %s:%d\n", #x, __FILE__, __LINE__); \
//     exit(-1); \
//   } \
// } while (0)
// #define CHECK_CONTIGUOUS(x) do { \
//   if (!x.is_contiguous()) { \
//     fprintf(stderr, "%s must be contiguous tensor at %s:%d\n", #x, __FILE__, __LINE__); \
//     exit(-1); \
//   } \
// } while (0)
// #define CHECK_INPUT(x) CHECK_CUDA(x);CHECK_CONTIGUOUS(x)


// int furthest_point_sampling_wrapper(int b, int n, int m,
//     at::Tensor points_tensor, at::Tensor temp_tensor, at::Tensor idx_tensor) {

//     CHECK_INPUT(points_tensor);
//     CHECK_INPUT(temp_tensor);
//     CHECK_INPUT(idx_tensor);

//     const float *points = points_tensor.data<float>();
//     float *temp = temp_tensor.data<float>();
//     int *idx = idx_tensor.data<int>();

//     furthest_point_sampling_kernel_launcher(b, n, m, points, temp, idx);
//     return 1;
// }
/*
Stacked-batch-data version of furthest point sampling, modified from the original implementation of official PointNet++ codes.
Written by Shaoshuai Shi
All Rights Reserved 2019-2020.
*/

#include <torch/extension.h>
#include <ATen/cuda/CUDAContext.h>
#include <vector>

#include "sampling_gpu.h"

// 移除旧版 THCState
// extern THCState *state;

#define CHECK_CUDA(x) do { \
  if (!(x).is_cuda()) { \
    fprintf(stderr, "%s must be CUDA tensor at %s:%d\n", #x, __FILE__, __LINE__); \
    exit(-1); \
  } \
} while (0)

#define CHECK_CONTIGUOUS(x) do { \
  if (!(x).is_contiguous()) { \
    fprintf(stderr, "%s must be contiguous tensor at %s:%d\n", #x, __FILE__, __LINE__); \
    exit(-1); \
  } \
} while (0)

#define CHECK_INPUT(x) do { \
  CHECK_CUDA(x); \
  CHECK_CONTIGUOUS(x); \
} while (0)


int furthest_point_sampling_wrapper(int b, int n, int m,
    at::Tensor points_tensor, at::Tensor temp_tensor, at::Tensor idx_tensor) {

    CHECK_INPUT(points_tensor);
    CHECK_INPUT(temp_tensor);
    CHECK_INPUT(idx_tensor);

    const float* points = points_tensor.data_ptr<float>();
    float* temp = temp_tensor.data_ptr<float>();
    int* idx = idx_tensor.data_ptr<int>();

    furthest_point_sampling_kernel_launcher(b, n, m, points, temp, idx);
    return 1;
}
