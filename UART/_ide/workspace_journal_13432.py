# 2025-09-01T23:19:56.994058
import vitis

client = vitis.create_client()
client.set_workspace(path="UART")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../myDesign_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

status = client.add_platform_repos(platform=["d:\Xilinx\Projects\UART\platform"])

status = client.add_platform_repos(platform=["d:\Xilinx\Projects\UART\platform\microblaze_0"])

vitis.dispose()

