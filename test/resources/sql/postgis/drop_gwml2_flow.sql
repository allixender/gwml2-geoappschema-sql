-- gwBudgetAmount downs

  DROP table if exists public.gwml2f_gwbudgetamount;
  drop SEQUENCE IF EXISTS public.gwml2f_gwbudgetamount_id_seq;
  Drop INDEX if EXISTS gwml2f_gwbudgetamount_id_uindex;
  Drop INDEX if EXISTS gwml2f_gwbudgetamount_gml_id_uindex;

  
-- gwBudgetDischarge downs

  DROP table if exists public.gwml2f_gwbudgetdischarge;
  drop SEQUENCE IF EXISTS public.gwml2f_gwbudgetdischarge_id_seq;
  Drop INDEX if EXISTS gwml2f_gwbudgetdischarge_id_uindex;
  Drop INDEX if EXISTS gwml2f_gwbudgetdischarge_gml_id_uindex;

  
-- gwBudgetRecharge downs

  DROP table if exists public.gwml2f_gwbudgetrecharge;
  drop SEQUENCE IF EXISTS public.gwml2f_gwbudgetrecharge_id_seq;
  Drop INDEX if EXISTS gwml2f_gwbudgetrecharge_id_uindex;
  Drop INDEX if EXISTS gwml2f_gwbudgetrecharge_gml_id_uindex;

  
-- gwBudgetValidTime downs

  DROP table if exists public.gwml2f_gwbudgetvalidtime;
  drop SEQUENCE IF EXISTS public.gwml2f_gwbudgetvalidtime_id_seq;
  Drop INDEX if EXISTS gwml2f_gwbudgetvalidtime_id_uindex;
  Drop INDEX if EXISTS gwml2f_gwbudgetvalidtime_gml_id_uindex;

  
-- GW_Discharge downs

  DROP table if exists public.gwml2f_gw_discharge;
  drop SEQUENCE IF EXISTS public.gwml2f_gw_discharge_id_seq;
  Drop INDEX if EXISTS gwml2f_gw_discharge_id_uindex;
  Drop INDEX if EXISTS gwml2f_gw_discharge_gml_id_uindex;

  
-- gwFlowBody downs

  DROP table if exists public.gwml2f_gwflowbody;
  drop SEQUENCE IF EXISTS public.gwml2f_gwflowbody_id_seq;
  Drop INDEX if EXISTS gwml2f_gwflowbody_id_uindex;
  Drop INDEX if EXISTS gwml2f_gwflowbody_gml_id_uindex;

  
-- gwFlowContainer downs

  DROP table if exists public.gwml2f_gwflowcontainer;
  drop SEQUENCE IF EXISTS public.gwml2f_gwflowcontainer_id_seq;
  Drop INDEX if EXISTS gwml2f_gwflowcontainer_id_uindex;
  Drop INDEX if EXISTS gwml2f_gwflowcontainer_gml_id_uindex;

  
-- gwFlowDestinationBody downs

  DROP table if exists public.gwml2f_gwflowdestinationbody;
  drop SEQUENCE IF EXISTS public.gwml2f_gwflowdestinationbody_id_seq;
  Drop INDEX if EXISTS gwml2f_gwflowdestinationbody_id_uindex;
  Drop INDEX if EXISTS gwml2f_gwflowdestinationbody_gml_id_uindex;

  
-- gwFlowDestinationContainer downs

  DROP table if exists public.gwml2f_gwflowdestinationcontainer;
  drop SEQUENCE IF EXISTS public.gwml2f_gwflowdestinationcontainer_id_seq;
  Drop INDEX if EXISTS gwml2f_gwflowdestinationcontainer_id_uindex;
  Drop INDEX if EXISTS gwml2f_gwflowdestinationcontainer_gml_id_uindex;

  
-- gwFlowInterfaceFeature downs

  DROP table if exists public.gwml2f_gwflowinterfacefeature;
  drop SEQUENCE IF EXISTS public.gwml2f_gwflowinterfacefeature_id_seq;
  Drop INDEX if EXISTS gwml2f_gwflowinterfacefeature_id_uindex;
  Drop INDEX if EXISTS gwml2f_gwflowinterfacefeature_gml_id_uindex;

  
-- gwFlowLocation downs

  DROP table if exists public.gwml2f_gwflowlocation;
  drop SEQUENCE IF EXISTS public.gwml2f_gwflowlocation_id_seq;
  Drop INDEX if EXISTS gwml2f_gwflowlocation_id_uindex;
  Drop INDEX if EXISTS gwml2f_gwflowlocation_gml_id_uindex;

  
-- gwFlowPersistence downs

  DROP table if exists public.gwml2f_gwflowpersistence;
  drop SEQUENCE IF EXISTS public.gwml2f_gwflowpersistence_id_seq;
  Drop INDEX if EXISTS gwml2f_gwflowpersistence_id_uindex;
  Drop INDEX if EXISTS gwml2f_gwflowpersistence_gml_id_uindex;

  
-- gwFlowProcess downs

  DROP table if exists public.gwml2f_gwflowprocess;
  drop SEQUENCE IF EXISTS public.gwml2f_gwflowprocess_id_seq;
  Drop INDEX if EXISTS gwml2f_gwflowprocess_id_uindex;
  Drop INDEX if EXISTS gwml2f_gwflowprocess_gml_id_uindex;

  
-- gwFlowSourceBody downs

  DROP table if exists public.gwml2f_gwflowsourcebody;
  drop SEQUENCE IF EXISTS public.gwml2f_gwflowsourcebody_id_seq;
  Drop INDEX if EXISTS gwml2f_gwflowsourcebody_id_uindex;
  Drop INDEX if EXISTS gwml2f_gwflowsourcebody_gml_id_uindex;

  
-- gwFlowSourceContainer downs

  DROP table if exists public.gwml2f_gwflowsourcecontainer;
  drop SEQUENCE IF EXISTS public.gwml2f_gwflowsourcecontainer_id_seq;
  Drop INDEX if EXISTS gwml2f_gwflowsourcecontainer_id_uindex;
  Drop INDEX if EXISTS gwml2f_gwflowsourcecontainer_gml_id_uindex;

  
-- gwFlowTime downs

  DROP table if exists public.gwml2f_gwflowtime;
  drop SEQUENCE IF EXISTS public.gwml2f_gwflowtime_id_seq;
  Drop INDEX if EXISTS gwml2f_gwflowtime_id_uindex;
  Drop INDEX if EXISTS gwml2f_gwflowtime_gml_id_uindex;

  
-- gwFlowVelocity downs

  DROP table if exists public.gwml2f_gwflowvelocity;
  drop SEQUENCE IF EXISTS public.gwml2f_gwflowvelocity_id_seq;
  Drop INDEX if EXISTS gwml2f_gwflowvelocity_id_uindex;
  Drop INDEX if EXISTS gwml2f_gwflowvelocity_gml_id_uindex;

  
-- gwFlowVolumeRate downs

  DROP table if exists public.gwml2f_gwflowvolumerate;
  drop SEQUENCE IF EXISTS public.gwml2f_gwflowvolumerate_id_seq;
  Drop INDEX if EXISTS gwml2f_gwflowvolumerate_id_uindex;
  Drop INDEX if EXISTS gwml2f_gwflowvolumerate_gml_id_uindex;

  
-- GW_InterFlow downs

  DROP table if exists public.gwml2f_gw_interflow;
  drop SEQUENCE IF EXISTS public.gwml2f_gw_interflow_id_seq;
  Drop INDEX if EXISTS gwml2f_gw_interflow_id_uindex;
  Drop INDEX if EXISTS gwml2f_gw_interflow_gml_id_uindex;

  
-- GW_IntraFlow downs

  DROP table if exists public.gwml2f_gw_intraflow;
  drop SEQUENCE IF EXISTS public.gwml2f_gw_intraflow_id_seq;
  Drop INDEX if EXISTS gwml2f_gw_intraflow_id_uindex;
  Drop INDEX if EXISTS gwml2f_gw_intraflow_gml_id_uindex;

  
-- GW_Recharge downs

  DROP table if exists public.gwml2f_gw_recharge;
  drop SEQUENCE IF EXISTS public.gwml2f_gw_recharge_id_seq;
  Drop INDEX if EXISTS gwml2f_gw_recharge_id_uindex;
  Drop INDEX if EXISTS gwml2f_gw_recharge_gml_id_uindex;

  
-- GW_WaterBudget downs

  DROP table if exists public.gwml2f_gw_waterbudget;
  drop SEQUENCE IF EXISTS public.gwml2f_gw_waterbudget_id_seq;
  Drop INDEX if EXISTS gwml2f_gw_waterbudget_id_uindex;
  Drop INDEX if EXISTS gwml2f_gw_waterbudget_gml_id_uindex;

  
