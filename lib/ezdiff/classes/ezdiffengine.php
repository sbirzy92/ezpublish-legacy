<?php
//
// Definition of eZDiffEngine class
//
// <creation-tag>
//
// ## BEGIN COPYRIGHT, LICENSE AND WARRANTY NOTICE ##
// SOFTWARE NAME: eZ publish
// SOFTWARE RELEASE: 3.8.x
// COPYRIGHT NOTICE: Copyright (C) 1999-2006 eZ systems AS
// SOFTWARE LICENSE: GNU General Public License v2.0
// NOTICE: >
//   This program is free software; you can redistribute it and/or
//   modify it under the terms of version 2.0  of the GNU General
//   Public License as published by the Free Software Foundation.
//
//   This program is distributed in the hope that it will be useful,
//   but WITHOUT ANY WARRANTY; without even the implied warranty of
//   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//   GNU General Public License for more details.
//
//   You should have received a copy of version 2.0 of the GNU General
//   Public License along with this program; if not, write to the Free
//   Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
//   MA 02110-1301, USA.
//
//
// ## END COPYRIGHT, LICENSE AND WARRANTY NOTICE ##
//

/*! \file ezdiffengine.php
  DiffEngine abstract class
*/

/*!
  \class eZDiffEngine ezdiffengine.php
  \abstract
  \ingroup eZDiff
  \brief eZDiff provides an access point the diff system
  
  The eZDiffEngine class is an abstract class, providing interface and shared code
  for the different available DiffEngine.
*/
class eZDiffEngine
{
    /*!
      Set operation of diff algorithm
    */
    function setDiffMode( $mode )
    {
        $this->DiffMode = $mode;
    }

    /*!
      \return Active diff operation mode
    */
    function getDiffMode()
    {
        return $this->DiffMode;
    }

    /*!
      This method must be overridden for each implementation of eZDiffEngine. This is the function
      which created the object containing the detected changes in the data set.
    */
    function createDifferenceObject( $fromData, $toData )
    {
    }

    /// \privatesection
    var $DiffMode;
}

?>
