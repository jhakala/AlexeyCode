herwig             := herwig
ALL_TOOLS      += herwig
herwig_LOC_INCLUDE := /afs/cern.ch/cms/slc5_amd64_gcc462/external/herwig/6.520-cms/include
herwig_EX_INCLUDE  := $(herwig_LOC_INCLUDE)
herwig_LOC_LIB := herwig herwig_dummy
herwig_EX_LIB  := $(herwig_LOC_LIB)
herwig_LOC_USE := f77compiler lhapdf photos
herwig_EX_USE  := $(herwig_LOC_USE)
herwig_INIT_FUNC := $$(eval $$(call ProductCommonVars,herwig,,,herwig))

