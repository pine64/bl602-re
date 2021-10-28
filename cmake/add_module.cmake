
function (init_bl602module libname)
    set(libname "${libname}" PARENT_SCOPE)
    add_library(${libname} STATIC)
    target_include_directories(${libname} PRIVATE ${CMAKE_SOURCE_DIR}/src/include/${libname})
endfunction()

function (add_bl602module module_name)
    file(GLOB lSRCs
    "${CMAKE_CURRENT_LIST_DIR}/${module_name}/*.c"
    )
    get_property(gSrcs GLOBAL PROPERTY ${libname}_SRCs)
    list(APPEND gSrcs ${lSRCs})
    set_property(GLOBAL PROPERTY ${libname}_SRCs "${gSrcs}")

    get_property(NEEDREMOVE GLOBAL PROPERTY ${libname}_NEEDREMOVE)
    foreach(blsrc ${lSRCs})
        get_filename_component(wle ${blsrc} NAME_WLE)
        list(APPEND NEEDREMOVE ${wle})
    endforeach()

    set_property(GLOBAL PROPERTY ${libname}_NEEDREMOVE "${NEEDREMOVE}")
endfunction()

function (end_bl602module)
    file(GLOB original_OBJs
        "${PROJECT_SOURCE_DIR}/lib${libname}/*.o"
    )

    foreach(blobj ${original_OBJs})
        get_filename_component(wle ${blobj} NAME_WLE)
        list(APPEND OBJs ${wle})
    endforeach()

    get_property(NEEDREMOVE GLOBAL PROPERTY ${libname}_NEEDREMOVE)
    list(REMOVE_ITEM OBJs ${NEEDREMOVE})
    list(TRANSFORM OBJs PREPEND "${PROJECT_SOURCE_DIR}/lib${libname}/")
    list(TRANSFORM OBJs APPEND ".o")
    set_property(GLOBAL PROPERTY ${libname}_OBJs "${OBJs}")

    get_property(gSrcs GLOBAL PROPERTY ${libname}_SRCs)
    target_sources(${libname} PRIVATE ${gSrcs} ${OBJs})

    message(STATUS "Library info: ${libname}")
    message(STATUS "Using Srcs")
    message(STATUS "${gSrcs}")
    message(STATUS "Using Objs")
    message(STATUS "${OBJs}")
endfunction()