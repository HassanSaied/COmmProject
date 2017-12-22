## Copyright (C) 2017 hassan
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {Function File} {@var{retval} =} detect_coherent (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: hassan <hassan@Jumana>
## Created: 2017-12-22

function [MSE] = detect_coherent (m, sigma)
z_coherent = randn(size(m)) * sigma;
r_coherent = m + z_coherent;
MSE = sum((r_coherent-m).^2)/size(m)(1);
endfunction
