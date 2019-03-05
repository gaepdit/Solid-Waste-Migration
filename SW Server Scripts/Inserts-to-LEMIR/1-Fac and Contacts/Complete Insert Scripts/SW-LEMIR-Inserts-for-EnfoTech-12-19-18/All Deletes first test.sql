USE [LEMIR_Stage]
GO
DELETE FROM [dbo].[FAC_TELEPHONIC]
WHERE [TELEPHONIC_RID] IN(21624682, 21624708, 21624683, 21624709, 21624684, 21624710, 21624685, 21624711, 21624686, 21624712, 21624687, 21624713, 21624688, 21624714, 21624689, 21624715, 21624690, 21624716, 21624691, 21624717, 21624694, 21624720, 21624695, 21624721, 21624697, 21624723, 21624698, 21624724, 21624692, 21624718, 21624693, 21624719, 21624696, 21624722, 21624700, 21624726, 21624699, 21624725, 21624701, 21624727, 21624702, 21624728, 21624703, 21624729, 21624704, 21624730, 21624705, 21624731, 21624706, 21624732)
GO


DELETE FROM [dbo].[FAC_EMAIL]
      WHERE [FACILITY_RID] in (333912,333913,333914,333915,333916,333917,333918,333919,333920,333921,333926,333927,333922,333923,333928,333924,333925,333930,333929,333931,333932,333933,333934,333935,333936)
GO


DELETE FROM [dbo].[FAC_ADDRESS]
      WHERE [FACILITY_RID] in (333912,333913,333914,333915,333916,333917,333918,333919,333920,333921,333926,333927,333922,333923,333928,333924,333925,333930,333929,333931,333932,333933,333934,333935,333936)
GO


DELETE FROM [dbo].[FAC_LOCATION]
      WHERE [FACILITY_RID] in (333912,333913,333914,333915,333916,333917,333918,333919,333920,333921,333926,333927,333922,333923,333928,333924,333925,333930,333929,333931,333932,333933,333934,333935,333936)
GO


DELETE FROM [dbo].[FAC_CONTACT]
      WHERE [FACILITY_RID] in (333912,333913,333914,333915,333916,333917,333918,333919,333920,333921,333926,333927,333922,333923,333928,333924,333925,333930,333929,333931,333932,333933,333934,333935,333936)
GO


DELETE FROM [dbo].[SYS_CONTACT_EMAIL]
WHERE [CONTACT_RID] IN(599658,599659, 599660, 599661, 599662, 599663, 599664, 599665, 599666, 599667, 599668, 599669, 599670, 599671, 599672, 599673, 599674, 599675, 599676, 599677, 599678, 599679, 599680, 599681, 599682)
GO


DELETE FROM [dbo].[SYS_CONTACT_TELEPHONIC]
      WHERE [CONTACT_RID] IN(599658,599659, 599660, 599661, 599662, 599663, 599664, 599665, 599666, 599667, 599668, 599669, 599670, 599671, 599672, 599673, 599674, 599675, 599676, 599677, 599678, 599679, 599680, 599681, 599682)
GO


DELETE FROM [dbo].[SYS_CONTACT_ADDRESS]
      WHERE [CONTACT_RID] IN(599658,599659, 599660, 599661, 599662, 599663, 599664, 599665, 599666, 599667, 599668, 599669, 599670, 599671, 599672, 599673, 599674, 599675, 599676, 599677, 599678, 599679, 599680, 599681, 599682)
GO


DELETE FROM [dbo].[SYS_TELEPHONIC]
WHERE [TELEPHONIC_RID] IN(21624682, 21624708, 21624683, 21624709, 21624684, 21624710, 21624685, 21624711, 21624686, 21624712, 21624687, 21624713, 21624688, 21624714, 21624689, 21624715, 21624690, 21624716, 21624691, 21624717, 21624694, 21624720, 21624695, 21624721, 21624697, 21624723, 21624698, 21624724, 21624692, 21624718, 21624693, 21624719, 21624696, 21624722, 21624700, 21624726, 21624699, 21624725, 21624701, 21624727, 21624702, 21624728, 21624703, 21624729, 21624704, 21624730, 21624705, 21624731, 21624706, 21624732, 21624734, 21624735, 21624736, 21624737, 21624738, 21624739, 21624740, 21624741, 21624742, 21624743, 21624744, 21624745, 21624746, 21624747, 21624748, 21624749, 21624750, 21624751, 21624752, 21624753, 21624754, 21624755, 21624756, 21624757, 21624758)
GO


DELETE FROM [dbo].[SYS_EMAIL]
WHERE [EMAIL_RID] IN(18458875, 18458876, 18458877, 18458878, 18458879, 18458880, 18458881, 18458882, 18458883, 18458884, 18458885, 18458886, 18458887, 18458888, 18458889, 18458890, 18458891, 18458892, 18458893, 18458894, 18458895, 18458896, 18458897, 18458898, 18458899)
GO


DELETE FROM [dbo].[SYS_ADDRESS]
WHERE [ADDRESS_RID] IN(10710347, 10710348, 10710349, 10710350, 10710351, 10710352, 10710353, 10710354, 10710355, 10710356, 10710357, 10710358, 10710359, 10710360, 10710361, 10710362, 10710363, 10710364, 10710365, 10710366, 10710367, 10710368, 10710369, 10710370, 10710371)
GO


DELETE FROM [dbo].[SYS_CONTACT]
WHERE [CONTACT_RID] IN(599658, 599659, 599660, 599661, 599662, 599663, 599664, 599665, 599666, 599667, 599668, 599669, 599670, 599671, 599672, 599673, 599674, 599675, 599676, 599677, 599678, 599679, 599680, 599681, 599682, 599684, 599685, 599686, 599687, 599688, 599689, 599690, 599691, 599692, 599693, 599694, 599695, 599696, 599697, 599698, 599699, 599700, 599701, 599702, 599703, 599704, 599705, 599706, 599707, 599708)
GO


DELETE FROM [dbo].[SYS_PHYSICAL_LOCATION]
WHERE [LOCATION_RID] IN(621748, 621749, 621750, 621751, 621752, 621753, 621754, 621755, 621756, 621757, 621758, 621759, 621760, 621761, 621762, 621763, 621764, 621765, 621766, 621767, 621768, 621769, 621770, 621771, 621772)
GO


DELETE FROM [dbo].[SYS_GEO_COORDINATE]
WHERE [GEO_COORDINATE_RID] IN(621348, 621349, 621350, 621351, 621352, 621353, 621354, 621355, 621356, 621357, 621358, 621359, 621360, 621361, 621362, 621363, 621364, 621365, 621366, 621367, 621368, 621369, 621370, 621371, 621372)
GO


DELETE FROM [dbo].[FAC_FACILITY]
WHERE [FACILITY_RID] IN(333912, 333913, 333914, 333915, 333916, 333917, 333918, 333919, 333920, 333921, 333922, 333923, 333924, 333925, 333926, 333927, 333928, 333929, 333930, 333931, 333932, 333933, 333934, 333935, 333936)
GO


