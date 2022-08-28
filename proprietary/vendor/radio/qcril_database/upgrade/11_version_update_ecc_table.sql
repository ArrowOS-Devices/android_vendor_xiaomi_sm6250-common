/*
  Copyright (c) 2020 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/

BEGIN TRANSACTION;

INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 11);


DELETE FROM qcril_emergency_source_voice_table where MCC = '286' AND NUMBER = '110';
DELETE FROM qcril_emergency_source_voice_table where MCC = '286' AND NUMBER = '155';
INSERT INTO "qcril_emergency_source_voice_table" VALUES('286','110','','full');
INSERT INTO "qcril_emergency_source_voice_table" VALUES('286','155','','full');

COMMIT TRANSACTION;
