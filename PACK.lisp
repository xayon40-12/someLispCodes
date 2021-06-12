;(in-package :myapp)
(map ^(#/\d\d:\d\d/ %) (re-split #/\n/ #`ls -l`))
(#/(\d\d:\d\d)+/ "11:33 33:44\n 44:55" :start 4 :end 20)
