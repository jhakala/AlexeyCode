ifeq ($(strip $(PyCommonToolsRecoAlgos)),)
PyCommonToolsRecoAlgos := self/src/CommonTools/RecoAlgos/python
PyCommonToolsRecoAlgos_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/CommonTools/RecoAlgos/python)
ALL_PRODS += PyCommonToolsRecoAlgos
PyCommonToolsRecoAlgos_INIT_FUNC        += $$(eval $$(call PythonProduct,PyCommonToolsRecoAlgos,src/CommonTools/RecoAlgos/python,src_CommonTools_RecoAlgos_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyCommonToolsRecoAlgos,src/CommonTools/RecoAlgos/python))
endif
ALL_COMMONRULES += src_CommonTools_RecoAlgos_python
src_CommonTools_RecoAlgos_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_CommonTools_RecoAlgos_python,src/CommonTools/RecoAlgos/python,PYTHON))
