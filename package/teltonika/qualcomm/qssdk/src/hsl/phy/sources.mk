LOC_DIR=hsl/phy
LIB=HSL

SRC_LIST :=

ifeq (ATHENA, $(CHIP_TYPE))
  SRC_LIST += f2_phy.c
endif

ifeq (GARUDA, $(CHIP_TYPE))
  SRC_LIST += f1_phy.c
endif

ifeq (SHIVA, $(CHIP_TYPE))
  SRC_LIST += f2_phy.c
endif

ifeq (HORUS, $(CHIP_TYPE))
  SRC_LIST += f2_phy.c
endif

ifeq (ISIS, $(CHIP_TYPE))
  SRC_LIST += f1_phy.c
endif

ifeq (ISISC, $(CHIP_TYPE))
  SRC_LIST += f1_phy.c
endif

ifeq (TRUE, $(IN_MALIBU_PHY))
  SRC_LIST += malibu_phy.c
endif

ifeq (ALL_CHIP, $(CHIP_TYPE))
     SRC_LIST += f1_phy.c f2_phy.c malibu_phy.c
endif

ifeq (NONHK_CHIP, $(CHIP_TYPE))
     SRC_LIST += f1_phy.c f2_phy.c malibu_phy.c
endif

ifeq (TRUE, $(IN_AQUANTIA_PHY))
    SRC_LIST += aquantia_phy.c
endif

ifeq (TRUE, $(IN_QCA803X_PHY))
    SRC_LIST += qca803x_phy.c
endif
SRC_LIST += hsl_phy.c

ifeq (linux, $(OS))
  ifeq (KSLIB, $(MODULE_TYPE))
    ifneq (TRUE, $(KERNEL_MODE))
      SRC_LIST :=
    endif
  endif
endif

SRC_LIST:=$(sort $(SRC_LIST))

SRCS += $(addprefix $(LOC_DIR)/, $(SRC_LIST))
