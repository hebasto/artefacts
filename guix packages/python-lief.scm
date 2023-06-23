(use-modules ;;
             ((gnu packages cmake) #:select (cmake-minimal))
             ((gnu packages python-build) #:select (python-tomli))
             (guix packages)
             (guix build-system python)
             (guix gexp)
             (guix git-download)
             ((guix licenses) #:prefix license:))

(package
    (name "python-lief")
    (version "0.13.2")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/lief-project/LIEF")
                    (commit version)))
              (file-name (git-file-name name version))
              (modules '((guix build utils)))
              (snippet
               '(begin
                  ;; Configure build for Python bindings.
                  (substitute* "api/python/config-default.toml"
                    (("(ninja         = )true" all m)
                     (string-append m "false"))
                    (("(parallel-jobs = )0" all m)
                     (string-append m (number->string (parallel-job-count)))))))
              (sha256
               (base32
                "0y48x358ppig5xp97ahcphfipx7cg9chldj2q5zrmn610fmi4zll"))))
    (build-system python-build-system)
    (native-inputs (list cmake-minimal python-tomli))
    (arguments
     (list
      #:tests? #f                  ;needs network
      #:phases #~(modify-phases %standard-phases
                   (add-before 'build 'change-directory
                     (lambda _
                       (chdir "api/python")))
                   (replace 'build
                     (lambda _
                       (invoke "python" "setup.py" "build"))))))
    (home-page "https://github.com/lief-project/LIEF")
    (synopsis "Library to instrument executable formats")
    (description
     "@code{python-lief} is a cross platform library which can parse, modify
and abstract ELF, PE and MachO formats.")
    (license license:asl2.0))
