/*
This is an example of how to use TSQL to setup test data whether it be for manual functional testing or automated testing.
Specifically this script insert and updates data to tables based on values in multiple other tables.
*/
INSERT INTO certf (user_ID, certf_TYPE_ID, CREATE_DATE, ACTIVE_FLAG, ORIENTATION_COMPLETED_FLAG)
VALUES (8888, 10, sysdate, 'N', 'Y');

DELETE FROM certf WHERE id = (SELECT id FROM certf WHERE user_id = 8888);

-- Performance Examination:
INSERT INTO perf_exam (user_id, pe_type_id, pass_fail, created_date, attempt, certf_id, pe_rater_form_id)
VALUES (8888, 2, 'N', sysdate, 1, (SELECT id FROM certf WHERE user_id = 8888 AND certf_type_id = 10 AND active_flag = 'N'), 2);

DELETE FROM perf_exam WHERE id = (SELECT id FROM perf_exam WHERE user_id = 8888;

-- Performance Examination elements:
INSERT INTO performance_exam_element (pe_id, element_id, pass_fail_flag, created_date, attempt)
VALUES((SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1), 14, 'N', sysdate, 1);
INSERT INTO performance_exam_element (pe_id, element_id, pass_fail_flag, created_date, attempt)
VALUES((SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1), 15, 'N', sysdate, 1);
INSERT INTO performance_exam_element (pe_id, element_id, pass_fail_flag, created_date, attempt)
VALUES((SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1), 16, 'N', sysdate, 1);
INSERT INTO performance_exam_element (pe_id, element_id, pass_fail_flag, created_date, attempt)
VALUES((SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1), 17, 'N', sysdate, 1);


DELETE FROM performance_exam_element WHERE pe_id = 6106;

/* user Exam Scheduled */
-- Exam Schedule:
INSERT INTO examination_schedule (TEST_TYPE, START_TIME, END_TIME, user_ID, HELD, EXAM_ID)
VALUES ('P', TO_DATE('2020-08-18 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-08-18 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 8888, 0, (SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1));

DELETE FROM examination_schedule WHERE exam_id = (SELECT id FROM perf_exam WHERE user_id = 8888);

UPDATE performance_exam_element SET schedule_date = TO_DATE('2020-08-18 13:00:00', 'YYYY-MM-DD HH24:MI:SS') WHERE pe_id = (SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1);
UPDATE performance_exam_element SET pe_stimulus_id = 201 WHERE element_id = 14 AND pe_id = (SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1);
UPDATE performance_exam_element SET pe_stimulus_id = 207 WHERE element_id = 15 AND pe_id = (SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1);
UPDATE performance_exam_element SET pe_stimulus_id = 213 WHERE element_id = 16 AND pe_id = (SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1);
UPDATE performance_exam_element SET pe_stimulus_id = 219 WHERE element_id = 17 AND pe_id = (SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1);

DELETE FROM performance_exam_element WHERE pe_id = (SELECT id FROM perf_exam WHERE user_id = 8888);


/* Administrator Assigns Video URL's */
-- Update with Video URL's
UPDATE performance_exam_element SET video_url = 'https://www.youtube.com/watch?v=WFkGjEut9U4&t=2962s' WHERE pe_id = (SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1);

-- element 14
INSERT INTO pe_comp_rater_type (performance_exam_element_id, rater_type_id)
VALUES ((SELECT id FROM performance_exam_element WHERE element_id = 14 AND pe_id = (SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1)), 1);
INSERT INTO pe_comp_rater_type (performance_exam_element_id, rater_type_id)
VALUES ((SELECT id FROM performance_exam_element WHERE element_id = 14 AND pe_id = (SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1)), 3);

-- element 15
INSERT INTO pe_comp_rater_type (performance_exam_element_id, rater_type_id)
VALUES ((SELECT id FROM performance_exam_element WHERE element_id = 15 AND pe_id = (SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1)), 1);
INSERT INTO pe_comp_rater_type (performance_exam_element_id, rater_type_id)
VALUES ((SELECT id FROM performance_exam_element WHERE element_id = 15 AND pe_id = (SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1)), 3);

-- element 16
INSERT INTO pe_comp_rater_type (performance_exam_element_id, rater_type_id)
VALUES ((SELECT id FROM performance_exam_element WHERE element_id = 16 AND pe_id = (SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1)), 1);
INSERT INTO pe_comp_rater_type (performance_exam_element_id, rater_type_id)
VALUES ((SELECT id FROM performance_exam_element WHERE element_id = 16 AND pe_id = (SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1)), 3);

-- element 17
INSERT INTO pe_comp_rater_type (performance_exam_element_id, rater_type_id)
VALUES ((SELECT id FROM performance_exam_element WHERE element_id = 17 AND pe_id = (SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1)), 2);
INSERT INTO pe_comp_rater_type (performance_exam_element_id, rater_type_id)
VALUES ((SELECT id FROM performance_exam_element WHERE element_id = 17 AND pe_id = (SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1)), 3);

/* Administrator assignment of evaluators: */
-- Deaf :: 646 :: element 14, 15, 16
INSERT INTO performance_exam_element_assignment (pe_comp_rater_type_id, pe_type_rater_id, pass_fail_flag)
VALUES ((SELECT id FROM pe_comp_rater_type WHERE performance_exam_element_id = (SELECT id FROM performance_exam_element WHERE element_id = 14 AND pe_id = (SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1)) AND rater_type_id = 1), 646, 'N');
INSERT INTO performance_exam_element_assignment (pe_comp_rater_type_id, pe_type_rater_id, pass_fail_flag)
VALUES ((SELECT id FROM pe_comp_rater_type WHERE performance_exam_element_id = (SELECT id FROM performance_exam_element WHERE element_id = 15 AND pe_id = (SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1)) AND rater_type_id = 1), 646, 'N');
INSERT INTO performance_exam_element_assignment (pe_comp_rater_type_id, pe_type_rater_id, pass_fail_flag)
VALUES ((SELECT id FROM pe_comp_rater_type WHERE performance_exam_element_id = (SELECT id FROM performance_exam_element WHERE element_id = 16 AND pe_id = (SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1)) AND rater_type_id = 1), 646, 'N');

-- Deaf :: 675 :: element 14, 15, 16
INSERT INTO performance_exam_element_assignment (pe_comp_rater_type_id, pe_type_rater_id, pass_fail_flag)
VALUES ((SELECT id FROM pe_comp_rater_type WHERE performance_exam_element_id = (SELECT id FROM performance_exam_element WHERE element_id = 14 AND pe_id = (SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1)) AND rater_type_id = 1), 675, 'N');
INSERT INTO performance_exam_element_assignment (pe_comp_rater_type_id, pe_type_rater_id, pass_fail_flag)
VALUES ((SELECT id FROM pe_comp_rater_type WHERE performance_exam_element_id = (SELECT id FROM performance_exam_element WHERE element_id = 15 AND pe_id = (SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1)) AND rater_type_id = 1), 675, 'N');
INSERT INTO performance_exam_element_assignment (pe_comp_rater_type_id, pe_type_rater_id, pass_fail_flag)
VALUES ((SELECT id FROM pe_comp_rater_type WHERE performance_exam_element_id = (SELECT id FROM performance_exam_element WHERE element_id = 16 AND pe_id = (SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1)) AND rater_type_id = 1), 675, 'N');

-- Deaf :: 675 :: element 14, 15, 16
INSERT INTO performance_exam_element_assignment (pe_comp_rater_type_id, pe_type_rater_id, pass_fail_flag)
VALUES ((SELECT id FROM pe_comp_rater_type WHERE performance_exam_element_id = (SELECT id FROM performance_exam_element WHERE element_id = 14 AND pe_id = (SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1)) AND rater_type_id = 1), 688, 'N');
INSERT INTO performance_exam_element_assignment (pe_comp_rater_type_id, pe_type_rater_id, pass_fail_flag)
VALUES ((SELECT id FROM pe_comp_rater_type WHERE performance_exam_element_id = (SELECT id FROM performance_exam_element WHERE element_id = 15 AND pe_id = (SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1)) AND rater_type_id = 1), 688, 'N');
INSERT INTO performance_exam_element_assignment (pe_comp_rater_type_id, pe_type_rater_id, pass_fail_flag)
VALUES ((SELECT id FROM pe_comp_rater_type WHERE performance_exam_element_id = (SELECT id FROM performance_exam_element WHERE element_id = 16 AND pe_id = (SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1)) AND rater_type_id = 1), 688, 'N');

-- CDI :: 571 :: element 17
INSERT INTO performance_exam_element_assignment (pe_comp_rater_type_id, pe_type_rater_id, pass_fail_flag)
VALUES ((SELECT id FROM pe_comp_rater_type WHERE performance_exam_element_id = (SELECT id FROM performance_exam_element WHERE element_id = 17 AND pe_id = (SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1)) AND rater_type_id = 2), 571, 'N');

-- CDI :: 289 :: element 17
INSERT INTO performance_exam_element_assignment (pe_comp_rater_type_id, pe_type_rater_id, pass_fail_flag)
VALUES ((SELECT id FROM pe_comp_rater_type WHERE performance_exam_element_id = (SELECT id FROM performance_exam_element WHERE element_id = 17 AND pe_id = (SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1)) AND rater_type_id = 2), 289, 'N');

-- CDI :: 493 :: element 17
INSERT INTO performance_exam_element_assignment (pe_comp_rater_type_id, pe_type_rater_id, pass_fail_flag)
VALUES ((SELECT id FROM pe_comp_rater_type WHERE performance_exam_element_id = (SELECT id FROM performance_exam_element WHERE element_id = 17 AND pe_id = (SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1)) AND rater_type_id = 2), 493, 'N');

-- user :: 265 :: element 14, 15, 16, 17
INSERT INTO performance_exam_element_assignment (pe_comp_rater_type_id, pe_type_rater_id, pass_fail_flag)
VALUES ((SELECT id FROM pe_comp_rater_type WHERE performance_exam_element_id = (SELECT id FROM performance_exam_element WHERE element_id = 14 AND pe_id = (SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1)) AND rater_type_id = 3), 265, 'N');
INSERT INTO performance_exam_element_assignment (pe_comp_rater_type_id, pe_type_rater_id, pass_fail_flag)
VALUES ((SELECT id FROM pe_comp_rater_type WHERE performance_exam_element_id = (SELECT id FROM performance_exam_element WHERE element_id = 15 AND pe_id = (SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1)) AND rater_type_id = 3), 265, 'N');
INSERT INTO performance_exam_element_assignment (pe_comp_rater_type_id, pe_type_rater_id, pass_fail_flag)
VALUES ((SELECT id FROM pe_comp_rater_type WHERE performance_exam_element_id = (SELECT id FROM performance_exam_element WHERE element_id = 16 AND pe_id = (SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1)) AND rater_type_id = 3), 265, 'N');
INSERT INTO performance_exam_element_assignment (pe_comp_rater_type_id, pe_type_rater_id, pass_fail_flag)
VALUES ((SELECT id FROM pe_comp_rater_type WHERE performance_exam_element_id = (SELECT id FROM performance_exam_element WHERE element_id = 17 AND pe_id = (SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1)) AND rater_type_id = 3), 265, 'N');

-- user :: 643 :: element 14, 15, 16, 17
INSERT INTO performance_exam_element_assignment (pe_comp_rater_type_id, pe_type_rater_id, pass_fail_flag)
VALUES ((SELECT id FROM pe_comp_rater_type WHERE performance_exam_element_id = (SELECT id FROM performance_exam_element WHERE element_id = 14 AND pe_id = (SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1)) AND rater_type_id = 3), 643, 'N');
INSERT INTO performance_exam_element_assignment (pe_comp_rater_type_id, pe_type_rater_id, pass_fail_flag)
VALUES ((SELECT id FROM pe_comp_rater_type WHERE performance_exam_element_id = (SELECT id FROM performance_exam_element WHERE element_id = 15 AND pe_id = (SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1)) AND rater_type_id = 3), 643, 'N');
INSERT INTO performance_exam_element_assignment (pe_comp_rater_type_id, pe_type_rater_id, pass_fail_flag)
VALUES ((SELECT id FROM pe_comp_rater_type WHERE performance_exam_element_id = (SELECT id FROM performance_exam_element WHERE element_id = 16 AND pe_id = (SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1)) AND rater_type_id = 3), 643, 'N');
INSERT INTO performance_exam_element_assignment (pe_comp_rater_type_id, pe_type_rater_id, pass_fail_flag)
VALUES ((SELECT id FROM pe_comp_rater_type WHERE performance_exam_element_id = (SELECT id FROM performance_exam_element WHERE element_id = 17 AND pe_id = (SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1)) AND rater_type_id = 3), 643, 'N');

-- user :: 191 :: element 14, 15, 16, 17
INSERT INTO performance_exam_element_assignment (pe_comp_rater_type_id, pe_type_rater_id, pass_fail_flag)
VALUES ((SELECT id FROM pe_comp_rater_type WHERE performance_exam_element_id = (SELECT id FROM performance_exam_element WHERE element_id = 14 AND pe_id = (SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1)) AND rater_type_id = 3), 191, 'N');
INSERT INTO performance_exam_element_assignment (pe_comp_rater_type_id, pe_type_rater_id, pass_fail_flag)
VALUES ((SELECT id FROM pe_comp_rater_type WHERE performance_exam_element_id = (SELECT id FROM performance_exam_element WHERE element_id = 15 AND pe_id = (SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1)) AND rater_type_id = 3), 191, 'N');
INSERT INTO performance_exam_element_assignment (pe_comp_rater_type_id, pe_type_rater_id, pass_fail_flag)
VALUES ((SELECT id FROM pe_comp_rater_type WHERE performance_exam_element_id = (SELECT id FROM performance_exam_element WHERE element_id = 16 AND pe_id = (SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1)) AND rater_type_id = 3), 191, 'N');
INSERT INTO performance_exam_element_assignment (pe_comp_rater_type_id, pe_type_rater_id, pass_fail_flag)
VALUES ((SELECT id FROM pe_comp_rater_type WHERE performance_exam_element_id = (SELECT id FROM performance_exam_element WHERE element_id = 17 AND pe_id = (SELECT id FROM perf_exam WHERE user_id = 8888 AND pe_type_id = 2 AND pass_fail = 'N' AND attempt = 1)) AND rater_type_id = 3), 191, 'N');

DELETE FROM performance_exam_element_assignment WHERE pe_comp_rater_type_id IN (SELECT id FROM pe_comp_rater_type WHERE performance_exam_element_id IN (SELECT id FROM performance_exam_element WHERE pe_id = SELECT id FROM perf_exam WHERE user_id = 8888))));


/* DELETE ANSWERS AND ANSWER OPTIONS: */
DELETE FROM pe_answer_option WHERE pe_answer_id IN (SELECT id FROM pe_answer WHERE performance_exam_element_assignment_id IN (SELECT id FROM performance_exam_element_assignment WHERE pe_comp_rater_type_id IN (SELECT id FROM pe_comp_rater_type WHERE performance_exam_element_id IN (SELECT id FROM performance_exam_element WHERE pe_id = 6106))));
