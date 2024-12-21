#pragma once

#include "Core.hpp"

namespace Coral {
	struct Memory
	{
		// NOTE (NorthernL1ghts): Maybe rename to AllocateHeapGlobal & FreeHeapGlobal for more context for API users?
		static void* AllocHGlobal(size_t InSize);
		static void FreeHGlobal(void* InPtr);

		static CharType* StringToCoTaskMemAuto(StringView InString);
		static void FreeCoTaskMem(void* InMemory);
	};
}
