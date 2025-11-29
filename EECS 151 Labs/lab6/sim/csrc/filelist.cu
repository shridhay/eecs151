PIC_LD=ld

ARCHIVE_OBJS=
ARCHIVE_OBJS += _987575_archive_1.so
_987575_archive_1.so : archive.190/_987575_archive_1.a
	@$(AR) -s $<
	@$(PIC_LD) -shared  -Bsymbolic  -o .//../uart_transmitter_tb.tb.daidir//_987575_archive_1.so --whole-archive $< --no-whole-archive
	@rm -f $@
	@ln -sf .//../uart_transmitter_tb.tb.daidir//_987575_archive_1.so $@





O0_OBJS =

$(O0_OBJS) : %.o: %.c
	$(CC_CG) $(CFLAGS_O0) -c -o $@ $<
 

%.o: %.c
	$(CC_CG) $(CFLAGS_CG) -c -o $@ $<
CU_UDP_OBJS = \


CU_LVL_OBJS = \
SIM_l.o 

MAIN_OBJS = \
objs/amcQw_d.o 

CU_OBJS = $(MAIN_OBJS) $(ARCHIVE_OBJS) $(CU_UDP_OBJS) $(CU_LVL_OBJS)

