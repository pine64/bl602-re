

file(GLOB bl602_wifi_original_OBJs
"${PROJECT_SOURCE_DIR}/libbl602_wifi/*.o"
)

file(GLOB bl602_wifi_SRCs
"*.c"
)

foreach(blsrc ${bl602_wifi_SRCs})
    get_filename_component(wle ${blsrc} NAME_WLE)
    list(APPEND NEEDREMOVE ${wle})
endforeach()

foreach(blobj ${bl602_wifi_original_OBJs})
    get_filename_component(wle ${blobj} NAME_WLE)
    list(APPEND bl602_wifi_OBJs ${wle})
endforeach()

list(REMOVE_ITEM bl602_wifi_OBJs ${NEEDREMOVE})
list(TRANSFORM bl602_wifi_OBJs PREPEND "${PROJECT_SOURCE_DIR}/libbl602_wifi/")
list(TRANSFORM bl602_wifi_OBJs APPEND ".o")


add_library(bl602_wifi STATIC ${bl602_wifi_SRCs} ${bl602_wifi_OBJs})

