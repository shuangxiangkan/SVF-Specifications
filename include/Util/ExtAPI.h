#ifndef __ExtAPI_H
#define __ExtAPI_H

#include "Util/BasicTypes.h"
#include "Util/cJSON.h"
#include <string>
#include <map>

namespace SVF
{
    class ExtAPI
    {
    public:
        enum extf_t
        {
            EXT_ADDR = 0,   // Handle addr edge
            EXT_COPY,       // Handle copy edge
            EXT_LOAD,       // Handle load edge
            EXT_STORE,      // Handle store edge
            EXT_LOADSTORE,  // Handle load and store edges, and add a dummy node
            EXT_COPY_N,     // Copy the character c (an unsigned char) to the first n characters of the string pointed to, by the argument str
            EXT_COPY_MN,    // Copies n characters from memory area src to memory area dest.
            EXT_FUNPTR,     // Handle function void *dlsym(void *handle, const char *symbol)
            EXT_COMPLEX,    // Handle function _ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_
            EXT_OTHER
        };

    private:
        std::map<std::string, extf_t> op_pair =
            {
                {"addr", EXT_ADDR},
                {"copy", EXT_COPY},
                {"load", EXT_LOAD},
                {"store", EXT_STORE},
                {"load_store", EXT_LOADSTORE},
                {"copy_n", EXT_COPY_N},
                {"copy_mn", EXT_COPY_MN},
                {"complex", EXT_COMPLEX},
                {"funptr", EXT_FUNPTR}
            };

        static ExtAPI *extOp;

        // Store specifications of external functions in ExtAPI.json file
        cJSON *root;

    public:
        static ExtAPI *getExtAPI();

        static void destory();

        // Get the corresponding name in ext_t, e.g. "EXT_ADDR" in {"addr", EXT_ADDR},
        extf_t get_opName(std::string s);

        // Return the extf_t of (F).
        // Get external function name, e.g "memcpy"
        std::string get_name(const SVFFunction *F);

        // Get arguments of the operation, e.g. ["A1R", "A0", "A2"]
        std::vector<std::string> get_opArgs(const cJSON *value);

        // Get specifications of external functions in ExtAPI.json file
        cJSON *get_FunJson(const std::string funName);

        // Get property of the operation, e.g. "EFT_A1R_A0R"
        std::string get_type(std::string funName);

        //Does (F) have a static var X (unavailable to us) that its return points to?
        bool has_static(const SVFFunction* F);

        //Assuming hasStatic(F), does (F) have a second static Y where X -> Y?
        bool has_static2(const SVFFunction* F);

        //Does (F) allocate a new object and return it?
        bool is_alloc(const SVFFunction* F);

        //Does (F) allocate a new object and assign it to one of its arguments?
        bool is_arg_alloc(const SVFFunction* F);

        //Get the position of argument which holds the new object
        int get_alloc_arg_pos(const SVFFunction* F);

        //Does (F) allocate only non-struct objects?
        bool no_struct_alloc(const SVFFunction* F);

        //Does (F) not free/release any memory?
        bool is_dealloc(const SVFFunction* F);

        //Does (F) not do anything with the known pointers?
        bool is_noop(const SVFFunction* F);

        //Does (F) reallocate a new object?
        bool is_realloc(const SVFFunction* F);

        //Should (F) be considered "external" (either not defined in the program
        //  or a user-defined version of a known alloc or no-op)?
        bool is_ext(const SVFFunction* F);

    };
} // End namespace SVF

#endif