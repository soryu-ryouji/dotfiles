import os
import platform
import shutil

def move_on_windows():
    script_dir = os.path.dirname(os.path.abspath(__file__))
    appdata_path = os.getenv('LOCALAPPDATA')
    nvim_folder = os.path.join(appdata_path, "nvim")

    if os.path.exists(nvim_folder):
        shutil.rmtree(nvim_folder)

    shutil.copytree(script_dir, nvim_folder)

def move_on_linux():
    print("Not NotImplement")

if __name__ == "__main__":
    os_system = platform.system()

    if os_system == "Windows":
        move_on_windows()
    elif os_system == "Linux":
        move_on_linux()