@echo off
echo Building Powder Grinder Mod...
cd /d "%~dp0"

REM Create directories
if not exist build\classes mkdir build\classes
if not exist build\libs mkdir build\libs

REM Compile all Java files
echo Compiling Java files...
javac -d build/classes -encoding UTF-8 ^
  src/main/java/com/skyblock/powder/PowderGrinderMod.java ^
  src/main/java/com/skyblock/powder/config/ModConfig.java ^
  src/main/java/com/skyblock/powder/automation/AutoMiner.java ^
  src/main/java/com/skyblock/powder/automation/Pathfinder.java ^
  src/main/java/com/skyblock/powder/detection/ChestDetector.java ^
  src/main/java/com/skyblock/powder/particles/ParticleEffects.java ^
  src/main/java/com/skyblock/powder/ui/GuiToggle.java ^
  src/main/java/com/skyblock/powder/mixin/ClientTickMixin.java ^
  src/main/java/com/skyblock/powder/mixin/GameRendererMixin.java

if %ERRORLEVEL% neq 0 (
  echo Compilation failed!
  pause
  exit /b 1
)

echo Compilation successful!
echo JAR would be created, but you need Gradle for the final packaging.
pause
