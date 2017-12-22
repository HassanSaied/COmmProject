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
## @deftypefn {Function File} {@var{retval} =} detect_non_coherent (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: hassan <hassan@Jumana>
## Created: 2017-12-22

function [MSE] = detect_non_coherent (m, sigma,A)
alpha = pi/4;
zI = randn(size(m)) * sigma;
zq = randn(size(m)) * sigma;
#Non Coherent
rI = (A+m).* cos(alpha)+zI;
rq = (A+m) .* sin(alpha) + zq;

r_non_coherent_with_dc = sqrt(rI .^2 + rq.^2);
r_non_coherent = r_non_coherent_with_dc - mean(r_non_coherent_with_dc);
MSE = mean(sum((r_non_coherent-m).^2));
endfunction
