=============
package_check
=============

:Date: 1/19/23

``package_check``
=================

package_check

Description
-----------

check if package is available and provide installation instruction if
not available

Usage
-----

.. code:: r

   package_check(
     pkg_name,
     repository = c("CRAN", "Bioc", "github", "pip"),
     github_repo = NULL,
     optional = FALSE,
     custom_msg = NULL
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``pkg_name``                  | name of package                      |
+-------------------------------+--------------------------------------+
| ``repository``                | where is the package                 |
+-------------------------------+--------------------------------------+
| ``github_repo``               | name of github repository if needed  |
+-------------------------------+--------------------------------------+
| ``optional``                  | whether the package is optional.     |
|                               | ``stop()`` is used if TRUE and only  |
|                               | ``message()`` will be sent if FALSE. |
+-------------------------------+--------------------------------------+
| ``custom_msg``                | custom message to be sent instead of |
|                               | default error or message             |
+-------------------------------+--------------------------------------+
