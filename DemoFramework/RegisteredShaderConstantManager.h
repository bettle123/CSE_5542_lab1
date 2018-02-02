#pragma once
#include <map>
#include "IShaderConstant.h"

namespace Crawfis {
	namespace Graphics {
		class RegisteredShaderConstantManager
		{
			//
			// Get the one and only instance of the RegisteredShaderConstantManager
			//
			static RegisteredShaderConstantManager* Instance()
			{
				if (!created)
				{
					instance = new RegisteredShaderConstantManager();
					created = true;
				}
				return instance;
			}
			//
			// Look-up a constant registered by it's name and
			// return it. If the material is not registered an
			// exception will be thrown.
			//
			IShaderConstant* DrawModel(std::string name)
			{
			}
			//
			// Register a new constant with the system.
			//
			void RegisterConstant(std::string name, IShaderConstant& constant)
			{
			}
		private:
			RegisteredShaderConstantManager();
			~RegisteredShaderConstantManager();
		private:
			static bool created;
			static RegisteredShaderConstantManager* instance;
			std::map<std::string, IShaderConstant*> knownShaderVariablesMap;
		};
	}
}