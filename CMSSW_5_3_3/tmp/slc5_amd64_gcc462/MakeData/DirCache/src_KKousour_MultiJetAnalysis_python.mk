ifeq ($(strip $(PyKKousourMultiJetAnalysis)),)
PyKKousourMultiJetAnalysis := self/src/KKousour/MultiJetAnalysis/python
PyKKousourMultiJetAnalysis_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/KKousour/MultiJetAnalysis/python)
ALL_PRODS += PyKKousourMultiJetAnalysis
PyKKousourMultiJetAnalysis_INIT_FUNC        += $$(eval $$(call PythonProduct,PyKKousourMultiJetAnalysis,src/KKousour/MultiJetAnalysis/python,src_KKousour_MultiJetAnalysis_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyKKousourMultiJetAnalysis,src/KKousour/MultiJetAnalysis/python))
endif
ALL_COMMONRULES += src_KKousour_MultiJetAnalysis_python
src_KKousour_MultiJetAnalysis_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_KKousour_MultiJetAnalysis_python,src/KKousour/MultiJetAnalysis/python,PYTHON))
