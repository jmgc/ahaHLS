#pragma once

#include <cmath>
#include <vector>
#include <string>

namespace DHLS {

  static inline
  std::string commaListString(const std::vector<std::string>& strings) {
    std::string res = "";
    for (int i = 0; i < (int) strings.size(); i++) {
      res += strings[i];
      if (i < (((int) strings.size()) - 1)) {
        res += ", ";
      }
    }
    return res;
  }

  template<typename T>
  static inline
  std::string commaListString(const std::vector<T>& objs) {
    std::vector<std::string> strs;
    for (auto str : objs) {
      strs.push_back(std::to_string(str));
    }
    return commaListString(strs);
  }
  
  static inline
  int clog2(const int val) {
    return ceil(log2(val));
  }

  static inline
  std::string indent(int tabs) {
    std::string ind = "";
    for (int i = 0; i < tabs; i++) {
      ind += "\t";
    }
    return ind;
  }

  static inline
  std::string tab(int nTabs) {
    std::string s = "";
    for (int i = 0; i < nTabs; i++) {
      s += '\t';
    }
    return s;
  }

  static inline
  std::string parens(const std::string& s) {
    return "(" + s + ")";
  }


}
