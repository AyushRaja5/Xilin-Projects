static const char * HSimCopyRightNotice = "Copyright 2004-2005, Xilinx Inc. All rights reserved.";
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


static HSim__s6* IF0(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    extern HSim__s6 * createworkM_f_ause_m_u_x_t_b__v(const char*);
    HSim__s6 *blk = createworkM_f_ause_m_u_x_t_b__v(label); 
    return blk;
}


static HSim__s6* IF1(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    extern HSim__s6 * createworkMmux(const char*);
    HSim__s6 *blk = createworkMmux(label); 
    return blk;
}


static HSim__s6* IF2(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    extern HSim__s6 * createworkM_f_ausng_m_u_x4(const char*);
    HSim__s6 *blk = createworkM_f_ausng_m_u_x4(label); 
    return blk;
}


static HSim__s6* IF3(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    extern HSim__s6 * createworkMglbl(const char*);
    HSim__s6 *blk = createworkMglbl(label); 
    return blk;
}

class _top : public HSim__s6 {
public:
    _top() : HSim__s6(false, "_top", "_top", 0, 0, HSim::VerilogModule) {}
    HSimConfigDecl * topModuleInstantiate() {
        HSimConfigDecl * cfgvh = 0;
        cfgvh = new HSimConfigDecl("default");
        (*cfgvh).registerFuseLibList("uni9000_ver;aim_ver;cpld_ver;xilinxcorelib_ver");

        (*cfgvh).addVlogModule("work","FAuseMUXTB_v", (HSimInstFactoryPtr)IF0);
        (*cfgvh).addVlogModule("work","mux", (HSimInstFactoryPtr)IF1);
        (*cfgvh).addVlogModule("work","FAusngMUX4", (HSimInstFactoryPtr)IF2);
        (*cfgvh).addVlogModule("work","glbl", (HSimInstFactoryPtr)IF3);
        HSim__s5 * topvl = 0;
        extern HSim__s6 * createworkM_f_ause_m_u_x_t_b__v(const char*);
        topvl = (HSim__s5*)createworkM_f_ause_m_u_x_t_b__v("FAuseMUXTB_v");
        topvl->moduleInstantiate(cfgvh);
        addChild(topvl);
        extern HSim__s6 * createworkMglbl(const char*);
        topvl = (HSim__s5*)createworkMglbl("glbl");
        topvl->moduleInstantiate(cfgvh);
        addChild(topvl);
        return cfgvh;
}
};

main(int argc, char **argv) {
  HSimDesign::initDesign();
  globalKernel->getOptions(argc,argv);
  HSim__s6 * _top_i = 0;
  try {
    HSimConfigDecl *cfg;
 _top_i = new _top();
  cfg =  _top_i->topModuleInstantiate();
    return globalKernel->runTcl(cfg, _top_i, "_top", argc, argv);
  }
  catch (HSimError& msg){
    try {
      globalKernel->error(msg.ErrMsg);
      return 1;
    }
    catch(...) {}
      return 1;
  }
  catch (...){
    globalKernel->fatalError();
    return 1;
  }
}
