#include <MultiEngine/core/Assert.h>
#include <MultiEngine/core/memory/MemoryAllocation.h>

#define TINYGLTF3_MALLOC(x) ::MultiEngine::memory_allocate(x)
#define TINYGLTF3_REALLOC(ptr, sz) ::MultiEngine::memory_reallocate((ptr), (sz))
#define TINYGLTF3_FREE(ptr) ::MultiEngine::memory_free((ptr))

#define TINYGLTF3_ASSERT(x) MLE_CORE_ASSERT(x)

#include "tiny_gltf_v3.h"
#include "tinygltf_json_c.h"