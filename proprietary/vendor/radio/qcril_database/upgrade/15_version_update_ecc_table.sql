/*
  Copyright (c) 2020 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/

BEGIN TRANSACTION;

INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 15);

DELETE FROM qcril_emergency_source_voice_table where MCC = '255' AND NUMBER = '101';
DELETE FROM qcril_emergency_source_voice_table where MCC = '255' AND NUMBER = '102';
DELETE FROM qcril_emergency_source_voice_table where MCC = '255' AND NUMBER = '103';
DELETE FROM qcril_emergency_source_voice_table where MCC = '255' AND NUMBER = '104';

COMMIT TRANSACTION;
