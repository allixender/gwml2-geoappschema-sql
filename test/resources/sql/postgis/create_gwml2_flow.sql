-- gwBudgetAmount ups

  CREATE TABLE public.gwml2f_gwbudgetamount
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2f_gwbudgetamount_id_uindex ON public.gwml2f_gwbudgetamount (id);
  CREATE UNIQUE INDEX gwml2f_gwbudgetamount_gml_id_uindex ON public.gwml2f_gwbudgetamount (gml_id);
  COMMENT ON TABLE public.gwml2f_gwbudgetamount IS 'from gwml2-flow.xsd gwml2f:gwBudgetAmount Final quantity (sum) of the budget.  If recharge = discharge, the sum is 0.';

  
-- gwBudgetDischarge ups

  CREATE TABLE public.gwml2f_gwbudgetdischarge
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2f_gwbudgetdischarge_id_uindex ON public.gwml2f_gwbudgetdischarge (id);
  CREATE UNIQUE INDEX gwml2f_gwbudgetdischarge_gml_id_uindex ON public.gwml2f_gwbudgetdischarge (gml_id);
  COMMENT ON TABLE public.gwml2f_gwbudgetdischarge IS 'from gwml2-flow.xsd gwml2f:gwBudgetDischarge Discharge (outflows) considered in the budget.';

  
-- gwBudgetRecharge ups

  CREATE TABLE public.gwml2f_gwbudgetrecharge
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2f_gwbudgetrecharge_id_uindex ON public.gwml2f_gwbudgetrecharge (id);
  CREATE UNIQUE INDEX gwml2f_gwbudgetrecharge_gml_id_uindex ON public.gwml2f_gwbudgetrecharge (gml_id);
  COMMENT ON TABLE public.gwml2f_gwbudgetrecharge IS 'from gwml2-flow.xsd gwml2f:gwBudgetRecharge Recharge (inflows) considered by the budget.';

  
-- gwBudgetValidTime ups

  CREATE TABLE public.gwml2f_gwbudgetvalidtime
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2f_gwbudgetvalidtime_id_uindex ON public.gwml2f_gwbudgetvalidtime (id);
  CREATE UNIQUE INDEX gwml2f_gwbudgetvalidtime_gml_id_uindex ON public.gwml2f_gwbudgetvalidtime (gml_id);
  COMMENT ON TABLE public.gwml2f_gwbudgetvalidtime IS 'from gwml2-flow.xsd gwml2f:gwBudgetValidTime Validity time of this budget (eg, 2010).';

  
-- GW_Discharge ups

  CREATE TABLE public.gwml2f_gw_discharge
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2f_gw_discharge_id_uindex ON public.gwml2f_gw_discharge (id);
  CREATE UNIQUE INDEX gwml2f_gw_discharge_gml_id_uindex ON public.gwml2f_gw_discharge (gml_id);
  COMMENT ON TABLE public.gwml2f_gw_discharge IS 'from gwml2-flow.xsd gwml2f:GW_Discharge An outflow of fluid from a container such as an aquifer, watershed, pipe, etc.';

  
-- gwFlowBody ups

  CREATE TABLE public.gwml2f_gwflowbody
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2f_gwflowbody_id_uindex ON public.gwml2f_gwflowbody (id);
  CREATE UNIQUE INDEX gwml2f_gwflowbody_gml_id_uindex ON public.gwml2f_gwflowbody (gml_id);
  COMMENT ON TABLE public.gwml2f_gwflowbody IS 'from gwml2-flow.xsd gwml2f:gwFlowBody The fluid body that is flowing.';

  
-- gwFlowContainer ups

  CREATE TABLE public.gwml2f_gwflowcontainer
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2f_gwflowcontainer_id_uindex ON public.gwml2f_gwflowcontainer (id);
  CREATE UNIQUE INDEX gwml2f_gwflowcontainer_gml_id_uindex ON public.gwml2f_gwflowcontainer (gml_id);
  COMMENT ON TABLE public.gwml2f_gwflowcontainer IS 'from gwml2-flow.xsd gwml2f:gwFlowContainer The entity in which the groundwater is flowing. Typically a unit, void, or groundwater body, but also be a man-made feature such as some conduit.';

  
-- gwFlowDestinationBody ups

  CREATE TABLE public.gwml2f_gwflowdestinationbody
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2f_gwflowdestinationbody_id_uindex ON public.gwml2f_gwflowdestinationbody (id);
  CREATE UNIQUE INDEX gwml2f_gwflowdestinationbody_gml_id_uindex ON public.gwml2f_gwflowdestinationbody (gml_id);
  COMMENT ON TABLE public.gwml2f_gwflowdestinationbody IS 'from gwml2-flow.xsd gwml2f:gwFlowDestinationBody The fluid body into which water is flowing.';

  
-- gwFlowDestinationContainer ups

  CREATE TABLE public.gwml2f_gwflowdestinationcontainer
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2f_gwflowdestinationcontainer_id_uindex ON public.gwml2f_gwflowdestinationcontainer (id);
  CREATE UNIQUE INDEX gwml2f_gwflowdestinationcontainer_gml_id_uindex ON public.gwml2f_gwflowdestinationcontainer (gml_id);
  COMMENT ON TABLE public.gwml2f_gwflowdestinationcontainer IS 'from gwml2-flow.xsd gwml2f:gwFlowDestinationContainer The feature into which water is flowing.';

  
-- gwFlowInterfaceFeature ups

  CREATE TABLE public.gwml2f_gwflowinterfacefeature
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2f_gwflowinterfacefeature_id_uindex ON public.gwml2f_gwflowinterfacefeature (id);
  CREATE UNIQUE INDEX gwml2f_gwflowinterfacefeature_gml_id_uindex ON public.gwml2f_gwflowinterfacefeature (gml_id);
  COMMENT ON TABLE public.gwml2f_gwflowinterfacefeature IS 'from gwml2-flow.xsd gwml2f:gwFlowInterfaceFeature The feature that denotes the interface between, for example, the groundwater and surface, such as a well, spring, seep, etc., or between two aquifers.';

  
-- gwFlowLocation ups

  CREATE TABLE public.gwml2f_gwflowlocation
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2f_gwflowlocation_id_uindex ON public.gwml2f_gwflowlocation (id);
  CREATE UNIQUE INDEX gwml2f_gwflowlocation_gml_id_uindex ON public.gwml2f_gwflowlocation (gml_id);
  COMMENT ON TABLE public.gwml2f_gwflowlocation IS 'from gwml2-flow.xsd gwml2f:gwFlowLocation The location at which water is being transferred from one one feature into another.
The location where groundwater is flowing within a feature.';

  
-- gwFlowPersistence ups

  CREATE TABLE public.gwml2f_gwflowpersistence
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2f_gwflowpersistence_id_uindex ON public.gwml2f_gwflowpersistence (id);
  CREATE UNIQUE INDEX gwml2f_gwflowpersistence_gml_id_uindex ON public.gwml2f_gwflowpersistence (gml_id);
  COMMENT ON TABLE public.gwml2f_gwflowpersistence IS 'from gwml2-flow.xsd gwml2f:gwFlowPersistence The regularity of flow occurrence, e.g. ephemeral, intermittent, perennial, seasonal. After http://inspire.ec.europa.eu/codeList/WaterPersistenceValue/ (INSPIRE 2013).';

  
-- gwFlowProcess ups

  CREATE TABLE public.gwml2f_gwflowprocess
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2f_gwflowprocess_id_uindex ON public.gwml2f_gwflowprocess (id);
  CREATE UNIQUE INDEX gwml2f_gwflowprocess_gml_id_uindex ON public.gwml2f_gwflowprocess (gml_id);
  COMMENT ON TABLE public.gwml2f_gwflowprocess IS 'from gwml2-flow.xsd gwml2f:gwFlowProcess The process causing the flow, e.g. evapotranspiration, evaporation, transpiration, runoff, baseflow, pumping, infiltration, injection, etc.';

  
-- gwFlowSourceBody ups

  CREATE TABLE public.gwml2f_gwflowsourcebody
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2f_gwflowsourcebody_id_uindex ON public.gwml2f_gwflowsourcebody (id);
  CREATE UNIQUE INDEX gwml2f_gwflowsourcebody_gml_id_uindex ON public.gwml2f_gwflowsourcebody (gml_id);
  COMMENT ON TABLE public.gwml2f_gwflowsourcebody IS 'from gwml2-flow.xsd gwml2f:gwFlowSourceBody The fluid body from which water is flowing.';

  
-- gwFlowSourceContainer ups

  CREATE TABLE public.gwml2f_gwflowsourcecontainer
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2f_gwflowsourcecontainer_id_uindex ON public.gwml2f_gwflowsourcecontainer (id);
  CREATE UNIQUE INDEX gwml2f_gwflowsourcecontainer_gml_id_uindex ON public.gwml2f_gwflowsourcecontainer (gml_id);
  COMMENT ON TABLE public.gwml2f_gwflowsourcecontainer IS 'from gwml2-flow.xsd gwml2f:gwFlowSourceContainer The feature from which water is flowing.';

  
-- gwFlowTime ups

  CREATE TABLE public.gwml2f_gwflowtime
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2f_gwflowtime_id_uindex ON public.gwml2f_gwflowtime (id);
  CREATE UNIQUE INDEX gwml2f_gwflowtime_gml_id_uindex ON public.gwml2f_gwflowtime (gml_id);
  COMMENT ON TABLE public.gwml2f_gwflowtime IS 'from gwml2-flow.xsd gwml2f:gwFlowTime Refers to the duration, instant or interval of the flow (actual time, not observation time). E.g. "yearly", "summer", "2009" or "2009-2011".';

  
-- gwFlowVelocity ups

  CREATE TABLE public.gwml2f_gwflowvelocity
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2f_gwflowvelocity_id_uindex ON public.gwml2f_gwflowvelocity (id);
  CREATE UNIQUE INDEX gwml2f_gwflowvelocity_gml_id_uindex ON public.gwml2f_gwflowvelocity (gml_id);
  COMMENT ON TABLE public.gwml2f_gwflowvelocity IS 'from gwml2-flow.xsd gwml2f:gwFlowVelocity Measure of water volume per unit of time.';

  
-- gwFlowVolumeRate ups

  CREATE TABLE public.gwml2f_gwflowvolumerate
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2f_gwflowvolumerate_id_uindex ON public.gwml2f_gwflowvolumerate (id);
  CREATE UNIQUE INDEX gwml2f_gwflowvolumerate_gml_id_uindex ON public.gwml2f_gwflowvolumerate (gml_id);
  COMMENT ON TABLE public.gwml2f_gwflowvolumerate IS 'from gwml2-flow.xsd gwml2f:gwFlowVolumeRate Measure of water quantity per time period with uom.';

  
-- GW_InterFlow ups

  CREATE TABLE public.gwml2f_gw_interflow
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2f_gw_interflow_id_uindex ON public.gwml2f_gw_interflow (id);
  CREATE UNIQUE INDEX gwml2f_gw_interflow_gml_id_uindex ON public.gwml2f_gw_interflow (gml_id);
  COMMENT ON TABLE public.gwml2f_gw_interflow IS 'from gwml2-flow.xsd gwml2f:GW_InterFlow Fluid flow between features through an interface, exiting one feature and entering another. Features into which fluid is flowing are usually units, voids, or fluid bodies, but can be natural surface water features such as rivers or lakes, or even man-made features such as dams or canals. Likewise for features where water is exiting.';

  
-- GW_IntraFlow ups

  CREATE TABLE public.gwml2f_gw_intraflow
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2f_gw_intraflow_id_uindex ON public.gwml2f_gw_intraflow (id);
  CREATE UNIQUE INDEX gwml2f_gw_intraflow_gml_id_uindex ON public.gwml2f_gw_intraflow (gml_id);
  COMMENT ON TABLE public.gwml2f_gw_intraflow IS 'from gwml2-flow.xsd gwml2f:GW_IntraFlow Fluid flow within a feature such as a unit, void, groundwater body, or even a man-made feature such as a conduit of some kind.';

  
-- GW_Recharge ups

  CREATE TABLE public.gwml2f_gw_recharge
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2f_gw_recharge_id_uindex ON public.gwml2f_gw_recharge (id);
  CREATE UNIQUE INDEX gwml2f_gw_recharge_gml_id_uindex ON public.gwml2f_gw_recharge (gml_id);
  COMMENT ON TABLE public.gwml2f_gw_recharge IS 'from gwml2-flow.xsd gwml2f:GW_Recharge Fluid added to an aquifer by various means such as precipitation, injection, etc.';

  
-- GW_WaterBudget ups

  CREATE TABLE public.gwml2f_gw_waterbudget
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2f_gw_waterbudget_id_uindex ON public.gwml2f_gw_waterbudget (id);
  CREATE UNIQUE INDEX gwml2f_gw_waterbudget_gml_id_uindex ON public.gwml2f_gw_waterbudget (gml_id);
  COMMENT ON TABLE public.gwml2f_gw_waterbudget IS 'from gwml2-flow.xsd gwml2f:GW_WaterBudget An accounting of the water input and output of a hydrogeologic unit, at a particular point in time, with a description of inflows and outflows.';

  
