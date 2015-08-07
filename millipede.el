#!/bin/sh
":"; exec emacs --quick --script "$0" "$@" # -*- mode: emacs-lisp; lexical-binding: t; -*-
(delete 'Git vc-handled-backends)

(setq head "    ╚⊙ ⊙╝\n")
(setq body "╚═(███)═╝\n")
(setq padding (vector "  " " " "" " " "  " "   " "    " "   "))

(defun millipede (size)
    "Print the millipede."
    (setq i 0)
    (princ head)
    (while (< i size)
        (princ (elt padding (% i 8)))
        (princ body)
        (setq i (+ i 1))
        )
)

(defun main ()
    "Main function"
    (if (elt argv 0)
        (setq size (string-to-number (elt argv 0)))
        (if '(integerp size)
                (setq size 20)
            )
            (setq size 20)
        )

    (when (<= size 0)
            (setq size 20)
        )

    (millipede size)
)

(main)
