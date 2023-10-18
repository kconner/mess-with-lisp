(defpackage some-cl-project/tests/main
  (:use :cl
        :some-cl-project
        :rove))
(in-package :some-cl-project/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :some-cl-project)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
