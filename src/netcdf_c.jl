# This file is based on automatically generated code from gen/wrap.jl

const depfile = joinpath(dirname(@__FILE__), "..", "deps", "deps.jl")
if isfile(depfile)
    include(depfile)
else
    error("libnetcdf not properly installed. Please run Pkg.build(\"NetCDF\")")
end

const NC_NAT = 0
const NC_BYTE = 1
const NC_CHAR = 2
const NC_SHORT = 3
const NC_INT = 4
const NC_LONG = NC_INT
const NC_FLOAT = 5
const NC_DOUBLE = 6
const NC_UBYTE = 7
const NC_USHORT = 8
const NC_UINT = 9
const NC_INT64 = 10
const NC_UINT64 = 11
const NC_STRING = 12
const NC_MAX_ATOMIC_TYPE = NC_STRING
const NC_VLEN = 13
const NC_OPAQUE = 14
const NC_ENUM = 15
const NC_COMPOUND = 16
const NC_FIRSTUSERTYPEID = 32

const NC_FILL = 0
const NC_NOFILL = 0x0100
const NC_NOWRITE = 0x0000
const NC_WRITE = 0x0001
const NC_CLOBBER = 0x0000
const NC_NOCLOBBER = 0x0004
const NC_DISKLESS = 0x0008
const NC_MMAP = 0x0010
const NC_64BIT_DATA = 0x0020
const NC_CDF5 = NC_64BIT_DATA
const NC_CLASSIC_MODEL = 0x0100
const NC_64BIT_OFFSET = 0x0200
const NC_LOCK = 0x0400
const NC_SHARE = 0x0800
const NC_NETCDF4 = 0x1000
const NC_MPIIO = 0x2000
const NC_MPIPOSIX = 0x4000
const NC_INMEMORY = 0x8000
const NC_PNETCDF = NC_MPIIO
const NC_FORMAT_CLASSIC = 1
const NC_FORMAT_64BIT_OFFSET = 2
const NC_FORMAT_64BIT = NC_FORMAT_64BIT_OFFSET
const NC_FORMAT_NETCDF4 = 3
const NC_FORMAT_NETCDF4_CLASSIC = 4
const NC_FORMAT_64BIT_DATA = 5
const NC_FORMAT_CDF5 = NC_FORMAT_64BIT_DATA
const NC_FORMATX_NC3 = 1
const NC_FORMATX_NC_HDF5 = 2
const NC_FORMATX_NC4 = NC_FORMATX_NC_HDF5
const NC_FORMATX_NC_HDF4 = 3
const NC_FORMATX_PNETCDF = 4
const NC_FORMATX_DAP2 = 5
const NC_FORMATX_DAP4 = 6
const NC_FORMATX_UNDEFINED = 0
const NC_FORMAT_NC3 = NC_FORMATX_NC3
const NC_FORMAT_NC_HDF5 = NC_FORMATX_NC_HDF5
const NC_FORMAT_NC4 = NC_FORMATX_NC4
const NC_FORMAT_NC_HDF4 = NC_FORMATX_NC_HDF4
const NC_FORMAT_PNETCDF = NC_FORMATX_PNETCDF
const NC_FORMAT_DAP2 = NC_FORMATX_DAP2
const NC_FORMAT_DAP4 = NC_FORMATX_DAP4
const NC_FORMAT_UNDEFINED = NC_FORMATX_UNDEFINED
const NC_SIZEHINT_DEFAULT = 0

const NC_UNLIMITED = Int32(0)
const NC_GLOBAL = -1
const NC_MAX_DIMS = 1024
const NC_MAX_ATTRS = 8192
const NC_MAX_VARS = 8192
const NC_MAX_NAME = 256
const NC_MAX_VAR_DIMS = 1024
const NC_MAX_HDF4_NAME = 64
const NC_ENDIAN_NATIVE = 0
const NC_ENDIAN_LITTLE = 1
const NC_ENDIAN_BIG = 2
const NC_CHUNKED = 0
const NC_CONTIGUOUS = 1
const NC_NOCHECKSUM = 0
const NC_FLETCHER32 = 1
const NC_NOSHUFFLE = 0
const NC_SHUFFLE = 1

const NC_NOERR = 0
const NC2_ERR = -1
const NC_EBADID = -33
const NC_ENFILE = -34
const NC_EEXIST = -35
const NC_EINVAL = -36
const NC_EPERM = -37
const NC_ENOTINDEFINE = -38
const NC_EINDEFINE = -39
const NC_EINVALCOORDS = -40
const NC_EMAXDIMS = -41
const NC_ENAMEINUSE = -42
const NC_ENOTATT = -43
const NC_EMAXATTS = -44
const NC_EBADTYPE = -45
const NC_EBADDIM = -46
const NC_EUNLIMPOS = -47
const NC_EMAXVARS = -48
const NC_ENOTVAR = -49
const NC_EGLOBAL = -50
const NC_ENOTNC = -51
const NC_ESTS = -52
const NC_EMAXNAME = -53
const NC_EUNLIMIT = -54
const NC_ENORECVARS = -55
const NC_ECHAR = -56
const NC_EEDGE = -57
const NC_ESTRIDE = -58
const NC_EBADNAME = -59
const NC_ERANGE = -60
const NC_ENOMEM = -61
const NC_EVARSIZE = -62
const NC_EDIMSIZE = -63
const NC_ETRUNC = -64
const NC_EAXISTYPE = -65
const NC_EDAP = -66
const NC_ECURL = -67
const NC_EIO = -68
const NC_ENODATA = -69
const NC_EDAPSVC = -70
const NC_EDAS = -71
const NC_EDDS = -72
const NC_EDATADDS = -73
const NC_EDAPURL = -74
const NC_EDAPCONSTRAINT = -75
const NC_ETRANSLATION = -76
const NC_EACCESS = -77
const NC_EAUTH = -78
const NC_ENOTFOUND = -90
const NC_ECANTREMOVE = -91
const NC4_FIRST_ERROR = -100
const NC_EHDFERR = -101
const NC_ECANTREAD = -102
const NC_ECANTWRITE = -103
const NC_ECANTCREATE = -104
const NC_EFILEMETA = -105
const NC_EDIMMETA = -106
const NC_EATTMETA = -107
const NC_EVARMETA = -108
const NC_ENOCOMPOUND = -109
const NC_EATTEXISTS = -110
const NC_ENOTNC4 = -111
const NC_ESTRICTNC3 = -112
const NC_ENOTNC3 = -113
const NC_ENOPAR = -114
const NC_EPARINIT = -115
const NC_EBADGRPID = -116
const NC_EBADTYPID = -117
const NC_ETYPDEFINED = -118
const NC_EBADFIELD = -119
const NC_EBADCLASS = -120
const NC_EMAPTYPE = -121
const NC_ELATEFILL = -122
const NC_ELATEDEF = -123
const NC_EDIMSCALE = -124
const NC_ENOGRP = -125
const NC_ESTORAGE = -126
const NC_EBADCHUNK = -127
const NC_ENOTBUILT = -128
const NC_EDISKLESS = -129
const NC_ECANTEXTEND = -130
const NC_EMPI = -131
const NC4_LAST_ERROR = -131
const DIM_WITHOUT_VARIABLE = "This is a netCDF dimension but not a netCDF variable."
const NC_HAVE_NEW_CHUNKING_API = 1
const NC_EURL = NC_EDAPURL
const NC_ECONSTRAINT = NC_EDAPCONSTRAINT

const NC_ENTOOL = NC_EMAXNAME
const NC_EXDR = -32
const NC_SYSERR = -31
const NC_FATAL = 1

const nc_type=Cint

type nc_vlen_t
    len::Integer
    p::Ptr{Void}
end

const nclong=Cint


function nc_inq_libvers()
    ccall((:nc_inq_libvers,libnetcdf),Ptr{UInt8},())
end

function nc_strerror(ncerr::Integer)
    ccall((:nc_strerror,libnetcdf),Ptr{UInt8},(Cint,),ncerr)
end

function nc__create(path,cmode::Integer,initialsz::Integer,chunksizehintp,ncidp)
    check(ccall((:nc__create,libnetcdf),Cint,(Ptr{UInt8},Cint,Cint,Ptr{Cint},Ptr{Cint}),path,cmode,initialsz,chunksizehintp,ncidp))
end

function nc_create(path,cmode::Integer,ncidp)
    check(ccall((:nc_create,libnetcdf),Cint,(Ptr{UInt8},Cint,Ptr{Cint}),path,cmode,ncidp))
end

function nc__open(path,mode::Integer,chunksizehintp,ncidp)
    check(ccall((:nc__open,libnetcdf),Cint,(Ptr{UInt8},Cint,Ptr{Cint},Ptr{Cint}),path,mode,chunksizehintp,ncidp))
end

function nc_open(path,mode::Integer,ncidp)
    check(ccall((:nc_open,libnetcdf),Cint,(Ptr{UInt8},Cint,Ptr{Cint}),path,mode,ncidp))
end

function nc_inq_path(ncid::Integer,pathlen,path)
    check(ccall((:nc_inq_path,libnetcdf),Cint,(Cint,Ptr{Cint},Ptr{UInt8}),ncid,pathlen,path))
end

function nc_inq_ncid(ncid::Integer,name,grp_ncid)
    check(ccall((:nc_inq_ncid,libnetcdf),Cint,(Cint,Ptr{UInt8},Ptr{Cint}),ncid,name,grp_ncid))
end

function nc_inq_grps(ncid::Integer,numgrps,ncids)
    check(ccall((:nc_inq_grps,libnetcdf),Cint,(Cint,Ptr{Cint},Ptr{Cint}),ncid,numgrps,ncids))
end

function nc_inq_grpname(ncid::Integer,name)
    check(ccall((:nc_inq_grpname,libnetcdf),Cint,(Cint,Ptr{UInt8}),ncid,name))
end

function nc_inq_grpname_full(ncid::Integer,lenp,full_name)
    check(ccall((:nc_inq_grpname_full,libnetcdf),Cint,(Cint,Ptr{Cint},Ptr{UInt8}),ncid,lenp,full_name))
end

function nc_inq_grpname_len(ncid::Integer,lenp)
    check(ccall((:nc_inq_grpname_len,libnetcdf),Cint,(Cint,Ptr{Cint}),ncid,lenp))
end

function nc_inq_grp_parent(ncid::Integer,parent_ncid)
    check(ccall((:nc_inq_grp_parent,libnetcdf),Cint,(Cint,Ptr{Cint}),ncid,parent_ncid))
end

function nc_inq_grp_ncid(ncid::Integer,grp_name,grp_ncid)
    check(ccall((:nc_inq_grp_ncid,libnetcdf),Cint,(Cint,Ptr{UInt8},Ptr{Cint}),ncid,grp_name,grp_ncid))
end

function nc_inq_grp_full_ncid(ncid::Integer,full_name,grp_ncid)
    check(ccall((:nc_inq_grp_full_ncid,libnetcdf),Cint,(Cint,Ptr{UInt8},Ptr{Cint}),ncid,full_name,grp_ncid))
end

function nc_inq_varids(ncid::Integer,nvars,varids)
    check(ccall((:nc_inq_varids,libnetcdf),Cint,(Cint,Ptr{Cint},Ptr{Cint}),ncid,nvars,varids))
end

function nc_inq_dimids(ncid::Integer,ndims,dimids,include_parents::Integer)
    check(ccall((:nc_inq_dimids,libnetcdf),Cint,(Cint,Ptr{Cint},Ptr{Cint},Cint),ncid,ndims,dimids,include_parents))
end

function nc_inq_typeids(ncid::Integer,ntypes,typeids)
    check(ccall((:nc_inq_typeids,libnetcdf),Cint,(Cint,Ptr{Cint},Ptr{Cint}),ncid,ntypes,typeids))
end

function nc_inq_type_equal(ncid1::Integer,typeid1::Integer,ncid2::Integer,typeid2::Integer,equal)
    check(ccall((:nc_inq_type_equal,libnetcdf),Cint,(Cint,nc_type,Cint,nc_type,Ptr{Cint}),ncid1,typeid1,ncid2,typeid2,equal))
end

function nc_def_grp(parent_ncid::Integer,name,new_ncid)
    check(ccall((:nc_def_grp,libnetcdf),Cint,(Cint,Ptr{UInt8},Ptr{Cint}),parent_ncid,name,new_ncid))
end

function nc_rename_grp(grpid::Integer,name)
    check(ccall((:nc_rename_grp,libnetcdf),Cint,(Cint,Ptr{UInt8}),grpid,name))
end

function nc_def_compound(ncid::Integer,size::Integer,name,typeidp)
    check(ccall((:nc_def_compound,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},Ptr{nc_type}),ncid,size,name,typeidp))
end

function nc_insert_compound(ncid::Integer,xtype::Integer,name,offset::Integer,field_typeid::Integer)
    check(ccall((:nc_insert_compound,libnetcdf),Cint,(Cint,nc_type,Ptr{UInt8},Cint,nc_type),ncid,xtype,name,offset,field_typeid))
end

function nc_insert_array_compound(ncid::Integer,xtype::Integer,name,offset::Integer,field_typeid::Integer,ndims::Integer,dim_sizes)
    check(ccall((:nc_insert_array_compound,libnetcdf),Cint,(Cint,nc_type,Ptr{UInt8},Cint,nc_type,Cint,Ptr{Cint}),ncid,xtype,name,offset,field_typeid,ndims,dim_sizes))
end

function nc_inq_type(ncid::Integer,xtype::Integer,name,size)
    check(ccall((:nc_inq_type,libnetcdf),Cint,(Cint,nc_type,Ptr{UInt8},Ptr{Cint}),ncid,xtype,name,size))
end

function nc_inq_typeid(ncid::Integer,name,typeidp)
    check(ccall((:nc_inq_typeid,libnetcdf),Cint,(Cint,Ptr{UInt8},Ptr{nc_type}),ncid,name,typeidp))
end

function nc_inq_compound(ncid::Integer,xtype::Integer,name,sizep,nfieldsp)
    check(ccall((:nc_inq_compound,libnetcdf),Cint,(Cint,nc_type,Ptr{UInt8},Ptr{Cint},Ptr{Cint}),ncid,xtype,name,sizep,nfieldsp))
end

function nc_inq_compound_name(ncid::Integer,xtype::Integer,name)
    check(ccall((:nc_inq_compound_name,libnetcdf),Cint,(Cint,nc_type,Ptr{UInt8}),ncid,xtype,name))
end

function nc_inq_compound_size(ncid::Integer,xtype::Integer,sizep)
    check(ccall((:nc_inq_compound_size,libnetcdf),Cint,(Cint,nc_type,Ptr{Cint}),ncid,xtype,sizep))
end

function nc_inq_compound_nfields(ncid::Integer,xtype::Integer,nfieldsp)
    check(ccall((:nc_inq_compound_nfields,libnetcdf),Cint,(Cint,nc_type,Ptr{Cint}),ncid,xtype,nfieldsp))
end

function nc_inq_compound_field(ncid::Integer,xtype::Integer,fieldid::Integer,name,offsetp,field_typeidp,ndimsp,dim_sizesp)
    check(ccall((:nc_inq_compound_field,libnetcdf),Cint,(Cint,nc_type,Cint,Ptr{UInt8},Ptr{Cint},Ptr{nc_type},Ptr{Cint},Ptr{Cint}),ncid,xtype,fieldid,name,offsetp,field_typeidp,ndimsp,dim_sizesp))
end

function nc_inq_compound_fieldname(ncid::Integer,xtype::Integer,fieldid::Integer,name)
    check(ccall((:nc_inq_compound_fieldname,libnetcdf),Cint,(Cint,nc_type,Cint,Ptr{UInt8}),ncid,xtype,fieldid,name))
end

function nc_inq_compound_fieldindex(ncid::Integer,xtype::Integer,name,fieldidp)
    check(ccall((:nc_inq_compound_fieldindex,libnetcdf),Cint,(Cint,nc_type,Ptr{UInt8},Ptr{Cint}),ncid,xtype,name,fieldidp))
end

function nc_inq_compound_fieldoffset(ncid::Integer,xtype::Integer,fieldid::Integer,offsetp)
    check(ccall((:nc_inq_compound_fieldoffset,libnetcdf),Cint,(Cint,nc_type,Cint,Ptr{Cint}),ncid,xtype,fieldid,offsetp))
end

function nc_inq_compound_fieldtype(ncid::Integer,xtype::Integer,fieldid::Integer,field_typeidp)
    check(ccall((:nc_inq_compound_fieldtype,libnetcdf),Cint,(Cint,nc_type,Cint,Ptr{nc_type}),ncid,xtype,fieldid,field_typeidp))
end

function nc_inq_compound_fieldndims(ncid::Integer,xtype::Integer,fieldid::Integer,ndimsp)
    check(ccall((:nc_inq_compound_fieldndims,libnetcdf),Cint,(Cint,nc_type,Cint,Ptr{Cint}),ncid,xtype,fieldid,ndimsp))
end

function nc_inq_compound_fielddim_sizes(ncid::Integer,xtype::Integer,fieldid::Integer,dim_sizes)
    check(ccall((:nc_inq_compound_fielddim_sizes,libnetcdf),Cint,(Cint,nc_type,Cint,Ptr{Cint}),ncid,xtype,fieldid,dim_sizes))
end

function nc_def_vlen(ncid::Integer,name,base_typeid::Integer,xtypep)
    check(ccall((:nc_def_vlen,libnetcdf),Cint,(Cint,Ptr{UInt8},nc_type,Ptr{nc_type}),ncid,name,base_typeid,xtypep))
end

function nc_inq_vlen(ncid::Integer,xtype::Integer,name,datum_sizep,base_nc_typep)
    check(ccall((:nc_inq_vlen,libnetcdf),Cint,(Cint,nc_type,Ptr{UInt8},Ptr{Cint},Ptr{nc_type}),ncid,xtype,name,datum_sizep,base_nc_typep))
end

function nc_free_vlen(vl)
    check(ccall((:nc_free_vlen,libnetcdf),Cint,(Ptr{nc_vlen_t},),vl))
end

function nc_free_vlens(len::Integer,vlens)
    check(ccall((:nc_free_vlens,libnetcdf),Cint,(Cint,Ptr{nc_vlen_t}),len,vlens))
end

function nc_put_vlen_element(ncid::Integer,typeid1::Integer,vlen_element,len::Integer,data)
    check(ccall((:nc_put_vlen_element,libnetcdf),Cint,(Cint,Cint,Ptr{Void},Cint,Ptr{Void}),ncid,typeid1,vlen_element,len,data))
end

function nc_get_vlen_element(ncid::Integer,typeid1::Integer,vlen_element,len,data)
    check(ccall((:nc_get_vlen_element,libnetcdf),Cint,(Cint,Cint,Ptr{Void},Ptr{Cint},Ptr{Void}),ncid,typeid1,vlen_element,len,data))
end

function nc_free_string(len::Integer,data)
    check(ccall((:nc_free_string,libnetcdf),Cint,(Cint,Ptr{Ptr{UInt8}}),len,data))
end

function nc_inq_user_type(ncid::Integer,xtype::Integer,name,size,base_nc_typep,nfieldsp,classp)
    check(ccall((:nc_inq_user_type,libnetcdf),Cint,(Cint,nc_type,Ptr{UInt8},Ptr{Cint},Ptr{nc_type},Ptr{Cint},Ptr{Cint}),ncid,xtype,name,size,base_nc_typep,nfieldsp,classp))
end

function nc_put_att(ncid::Integer,varid::Integer,name,xtype::Integer,len::Integer,op)
    check(ccall((:nc_put_att,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},nc_type,Cint,Ptr{Void}),ncid,varid,name,xtype,len,op))
end

function nc_get_att(ncid::Integer,varid::Integer,name,ip)
    check(ccall((:nc_get_att,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},Ptr{Void}),ncid,varid,name,ip))
end

function nc_def_enum(ncid::Integer,base_typeid::Integer,name,typeidp)
    check(ccall((:nc_def_enum,libnetcdf),Cint,(Cint,nc_type,Ptr{UInt8},Ptr{nc_type}),ncid,base_typeid,name,typeidp))
end

function nc_insert_enum(ncid::Integer,xtype::Integer,name,value)
    check(ccall((:nc_insert_enum,libnetcdf),Cint,(Cint,nc_type,Ptr{UInt8},Ptr{Void}),ncid,xtype,name,value))
end

function nc_inq_enum(ncid::Integer,xtype::Integer,name,base_nc_typep,base_sizep,num_membersp)
    check(ccall((:nc_inq_enum,libnetcdf),Cint,(Cint,nc_type,Ptr{UInt8},Ptr{nc_type},Ptr{Cint},Ptr{Cint}),ncid,xtype,name,base_nc_typep,base_sizep,num_membersp))
end

function nc_inq_enum_member(ncid::Integer,xtype::Integer,idx::Integer,name,value)
    check(ccall((:nc_inq_enum_member,libnetcdf),Cint,(Cint,nc_type,Cint,Ptr{UInt8},Ptr{Void}),ncid,xtype,idx,name,value))
end

function nc_inq_enum_ident(ncid::Integer,xtype::Integer,value::Clonglong,identifier)
    check(ccall((:nc_inq_enum_ident,libnetcdf),Cint,(Cint,nc_type,Clonglong,Ptr{UInt8}),ncid,xtype,value,identifier))
end

function nc_def_opaque(ncid::Integer,size::Integer,name,xtypep)
    check(ccall((:nc_def_opaque,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},Ptr{nc_type}),ncid,size,name,xtypep))
end

function nc_inq_opaque(ncid::Integer,xtype::Integer,name,sizep)
    check(ccall((:nc_inq_opaque,libnetcdf),Cint,(Cint,nc_type,Ptr{UInt8},Ptr{Cint}),ncid,xtype,name,sizep))
end

function nc_put_var(ncid::Integer,varid::Integer,op)
    check(ccall((:nc_put_var,libnetcdf),Cint,(Cint,Cint,Ptr{Void}),ncid,varid,op))
end

function nc_get_var(ncid::Integer,varid::Integer,ip)
    check(ccall((:nc_get_var,libnetcdf),Cint,(Cint,Cint,Ptr{Void}),ncid,varid,ip))
end

function nc_put_var1(ncid::Integer,varid::Integer,indexp,op)
    check(ccall((:nc_put_var1,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Void}),ncid,varid,indexp,op))
end

function nc_get_var1(ncid::Integer,varid::Integer,indexp,ip)
    check(ccall((:nc_get_var1,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Void}),ncid,varid,indexp,ip))
end

function nc_put_vara(ncid::Integer,varid::Integer,startp,countp,op)
    check(ccall((:nc_put_vara,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Void}),ncid,varid,startp,countp,op))
end

function nc_get_vara(ncid::Integer,varid::Integer,startp,countp,ip)
    check(ccall((:nc_get_vara,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Void}),ncid,varid,startp,countp,ip))
end

function nc_put_vars(ncid::Integer,varid::Integer,startp,countp,stridep,op)
    check(ccall((:nc_put_vars,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Void}),ncid,varid,startp,countp,stridep,op))
end

function nc_get_vars(ncid::Integer,varid::Integer,startp,countp,stridep,ip)
    check(ccall((:nc_get_vars,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Void}),ncid,varid,startp,countp,stridep,ip))
end

function nc_put_varm(ncid::Integer,varid::Integer,startp,countp,stridep,imapp,op)
    check(ccall((:nc_put_varm,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Void}),ncid,varid,startp,countp,stridep,imapp,op))
end

function nc_get_varm(ncid::Integer,varid::Integer,startp,countp,stridep,imapp,ip)
    check(ccall((:nc_get_varm,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Void}),ncid,varid,startp,countp,stridep,imapp,ip))
end

function nc_def_var_deflate(ncid::Integer,varid::Integer,shuffle::Integer,deflate::Integer,deflate_level::Integer)
    check(ccall((:nc_def_var_deflate,libnetcdf),Cint,(Cint,Cint,Cint,Cint,Cint),ncid,varid,shuffle,deflate,deflate_level))
end

function nc_inq_var_deflate(ncid::Integer,varid::Integer,shufflep,deflatep,deflate_levelp)
    check(ccall((:nc_inq_var_deflate,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint}),ncid,varid,shufflep,deflatep,deflate_levelp))
end

function nc_inq_var_szip(ncid::Integer,varid::Integer,options_maskp,pixels_per_blockp)
    check(ccall((:nc_inq_var_szip,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint}),ncid,varid,options_maskp,pixels_per_blockp))
end

function nc_def_var_fletcher32(ncid::Integer,varid::Integer,fletcher32::Integer)
    check(ccall((:nc_def_var_fletcher32,libnetcdf),Cint,(Cint,Cint,Cint),ncid,varid,fletcher32))
end

function nc_inq_var_fletcher32(ncid::Integer,varid::Integer,fletcher32p)
    check(ccall((:nc_inq_var_fletcher32,libnetcdf),Cint,(Cint,Cint,Ptr{Cint}),ncid,varid,fletcher32p))
end

function nc_def_var_chunking(ncid::Integer,varid::Integer,storage::Integer,chunksizesp)
    check(ccall((:nc_def_var_chunking,libnetcdf),Cint,(Cint,Cint,Cint,Ptr{Cint}),ncid,varid,storage,chunksizesp))
end

function nc_inq_var_chunking(ncid::Integer,varid::Integer,storagep,chunksizesp)
    check(ccall((:nc_inq_var_chunking,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint}),ncid,varid,storagep,chunksizesp))
end

function nc_def_var_fill(ncid::Integer,varid::Integer,no_fill::Integer,fill_value)
    check(ccall((:nc_def_var_fill,libnetcdf),Cint,(Cint,Cint,Cint,Ptr{Void}),ncid,varid,no_fill,fill_value))
end

function nc_inq_var_fill(ncid::Integer,varid::Integer,no_fill,fill_valuep)
    check(ccall((:nc_inq_var_fill,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Void}),ncid,varid,no_fill,fill_valuep))
end

function nc_def_var_endian(ncid::Integer,varid::Integer,endian::Integer)
    check(ccall((:nc_def_var_endian,libnetcdf),Cint,(Cint,Cint,Cint),ncid,varid,endian))
end

function nc_inq_var_endian(ncid::Integer,varid::Integer,endianp)
    check(ccall((:nc_inq_var_endian,libnetcdf),Cint,(Cint,Cint,Ptr{Cint}),ncid,varid,endianp))
end

function nc_set_fill(ncid::Integer,fillmode::Integer,old_modep)
    check(ccall((:nc_set_fill,libnetcdf),Cint,(Cint,Cint,Ptr{Cint}),ncid,fillmode,old_modep))
end

function nc_set_default_format(format::Integer,old_formatp)
    check(ccall((:nc_set_default_format,libnetcdf),Cint,(Cint,Ptr{Cint}),format,old_formatp))
end

function nc_set_chunk_cache(size::Integer,nelems::Integer,preemption::Cfloat)
    check(ccall((:nc_set_chunk_cache,libnetcdf),Cint,(Cint,Cint,Cfloat),size,nelems,preemption))
end

function nc_get_chunk_cache(sizep,nelemsp,preemptionp)
    check(ccall((:nc_get_chunk_cache,libnetcdf),Cint,(Ptr{Cint},Ptr{Cint},Ptr{Cfloat}),sizep,nelemsp,preemptionp))
end

function nc_set_var_chunk_cache(ncid::Integer,varid::Integer,size::Integer,nelems::Integer,preemption::Cfloat)
    check(ccall((:nc_set_var_chunk_cache,libnetcdf),Cint,(Cint,Cint,Cint,Cint,Cfloat),ncid,varid,size,nelems,preemption))
end

function nc_get_var_chunk_cache(ncid::Integer,varid::Integer,sizep,nelemsp,preemptionp)
    check(ccall((:nc_get_var_chunk_cache,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cfloat}),ncid,varid,sizep,nelemsp,preemptionp))
end

function nc_redef(ncid::Integer)
    check(ccall((:nc_redef,libnetcdf),Cint,(Cint,),ncid))
end

function nc__enddef(ncid::Integer,h_minfree::Integer,v_align::Integer,v_minfree::Integer,r_align::Integer)
    check(ccall((:nc__enddef,libnetcdf),Cint,(Cint,Cint,Cint,Cint,Cint),ncid,h_minfree,v_align,v_minfree,r_align))
end

function nc_enddef(ncid::Integer)
    check(ccall((:nc_enddef,libnetcdf),Cint,(Cint,),ncid))
end

function nc_sync(ncid::Integer)
    check(ccall((:nc_sync,libnetcdf),Cint,(Cint,),ncid))
end

function nc_abort(ncid::Integer)
    check(ccall((:nc_abort,libnetcdf),Cint,(Cint,),ncid))
end

function nc_close(ncid::Integer)
    check(ccall((:nc_close,libnetcdf),Cint,(Cint,),ncid))
end

function nc_inq(ncid::Integer,ndimsp,nvarsp,nattsp,unlimdimidp)
    check(ccall((:nc_inq,libnetcdf),Cint,(Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint}),ncid,ndimsp,nvarsp,nattsp,unlimdimidp))
end

function nc_inq_ndims(ncid::Integer,ndimsp)
    check(ccall((:nc_inq_ndims,libnetcdf),Cint,(Cint,Ptr{Cint}),ncid,ndimsp))
end

function nc_inq_nvars(ncid::Integer,nvarsp)
    check(ccall((:nc_inq_nvars,libnetcdf),Cint,(Cint,Ptr{Cint}),ncid,nvarsp))
end

function nc_inq_natts(ncid::Integer,nattsp)
    check(ccall((:nc_inq_natts,libnetcdf),Cint,(Cint,Ptr{Cint}),ncid,nattsp))
end

function nc_inq_unlimdim(ncid::Integer,unlimdimidp)
    check(ccall((:nc_inq_unlimdim,libnetcdf),Cint,(Cint,Ptr{Cint}),ncid,unlimdimidp))
end

function nc_inq_unlimdims(ncid::Integer,nunlimdimsp,unlimdimidsp)
    check(ccall((:nc_inq_unlimdims,libnetcdf),Cint,(Cint,Ptr{Cint},Ptr{Cint}),ncid,nunlimdimsp,unlimdimidsp))
end

function nc_inq_format(ncid::Integer,formatp)
    check(ccall((:nc_inq_format,libnetcdf),Cint,(Cint,Ptr{Cint}),ncid,formatp))
end

function nc_inq_format_extended(ncid::Integer,formatp,modep)
    check(ccall((:nc_inq_format_extended,libnetcdf),Cint,(Cint,Ptr{Cint},Ptr{Cint}),ncid,formatp,modep))
end

function nc_def_dim(ncid::Integer,name,len::Integer,idp)
    check(ccall((:nc_def_dim,libnetcdf),Cint,(Cint,Ptr{UInt8},Cint,Ptr{Cint}),ncid,name,len,idp))
end

function nc_inq_dimid(ncid::Integer,name,idp)
    check(ccall((:nc_inq_dimid,libnetcdf),Cint,(Cint,Ptr{UInt8},Ptr{Cint}),ncid,name,idp))
end

function nc_inq_dim(ncid::Integer,dimid::Integer,name,lenp)
    check(ccall((:nc_inq_dim,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},Ptr{Cint}),ncid,dimid,name,lenp))
end

function nc_inq_dimname(ncid::Integer,dimid::Integer,name)
    check(ccall((:nc_inq_dimname,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8}),ncid,dimid,name))
end

function nc_inq_dimlen(ncid::Integer,dimid::Integer,lenp)
    check(ccall((:nc_inq_dimlen,libnetcdf),Cint,(Cint,Cint,Ptr{Cint}),ncid,dimid,lenp))
end

function nc_rename_dim(ncid::Integer,dimid::Integer,name)
    check(ccall((:nc_rename_dim,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8}),ncid,dimid,name))
end

function nc_inq_att(ncid::Integer,varid::Integer,name,xtypep,lenp)
    check(ccall((:nc_inq_att,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},Ptr{nc_type},Ptr{Cint}),ncid,varid,name,xtypep,lenp))
end

function nc_inq_attid(ncid::Integer,varid::Integer,name,idp)
    check(ccall((:nc_inq_attid,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},Ptr{Cint}),ncid,varid,name,idp))
end

function nc_inq_atttype(ncid::Integer,varid::Integer,name,xtypep)
    check(ccall((:nc_inq_atttype,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},Ptr{nc_type}),ncid,varid,name,xtypep))
end

function nc_inq_attlen(ncid::Integer,varid::Integer,name,lenp)
    check(ccall((:nc_inq_attlen,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},Ptr{Cint}),ncid,varid,name,lenp))
end

function nc_inq_attname(ncid::Integer,varid::Integer,attnum::Integer,name)
    check(ccall((:nc_inq_attname,libnetcdf),Cint,(Cint,Cint,Cint,Ptr{UInt8}),ncid,varid,attnum,name))
end

function nc_copy_att(ncid_in::Integer,varid_in::Integer,name,ncid_out::Integer,varid_out::Integer)
    check(ccall((:nc_copy_att,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},Cint,Cint),ncid_in,varid_in,name,ncid_out,varid_out))
end

function nc_rename_att(ncid::Integer,varid::Integer,name,newname)
    check(ccall((:nc_rename_att,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},Ptr{UInt8}),ncid,varid,name,newname))
end

function nc_del_att(ncid::Integer,varid::Integer,name)
    check(ccall((:nc_del_att,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8}),ncid,varid,name))
end

function nc_put_att_text(ncid::Integer,varid::Integer,name,len::Integer,op)
    check(ccall((:nc_put_att_text,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},Cint,Ptr{UInt8}),ncid,varid,name,len,op))
end

function nc_get_att_text(ncid::Integer,varid::Integer,name,ip)
    check(ccall((:nc_get_att_text,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},Ptr{UInt8}),ncid,varid,name,ip))
end

function nc_put_att_string(ncid::Integer,varid::Integer,name,len::Integer,op)
    check(ccall((:nc_put_att_string,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},Cint,Ptr{Ptr{UInt8}}),ncid,varid,name,len,op))
end

function nc_get_att_string(ncid::Integer,varid::Integer,name,ip)
    check(ccall((:nc_get_att_string,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},Ptr{Ptr{UInt8}}),ncid,varid,name,ip))
end

function nc_put_att_uchar(ncid::Integer,varid::Integer,name,xtype::Integer,len::Integer,op)
    check(ccall((:nc_put_att_uchar,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},nc_type,Cint,Ptr{Cuchar}),ncid,varid,name,xtype,len,op))
end

function nc_get_att_uchar(ncid::Integer,varid::Integer,name,ip)
    check(ccall((:nc_get_att_uchar,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},Ptr{Cuchar}),ncid,varid,name,ip))
end

function nc_put_att_schar(ncid::Integer,varid::Integer,name,xtype::Integer,len::Integer,op)
    check(ccall((:nc_put_att_schar,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},nc_type,Cint,Ptr{UInt8}),ncid,varid,name,xtype,len,op))
end

function nc_get_att_schar(ncid::Integer,varid::Integer,name,ip)
    check(ccall((:nc_get_att_schar,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},Ptr{UInt8}),ncid,varid,name,ip))
end

function nc_put_att_short(ncid::Integer,varid::Integer,name,xtype::Integer,len::Integer,op)
    check(ccall((:nc_put_att_short,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},nc_type,Cint,Ptr{Int16}),ncid,varid,name,xtype,len,op))
end

function nc_get_att_short(ncid::Integer,varid::Integer,name,ip)
    check(ccall((:nc_get_att_short,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},Ptr{Int16}),ncid,varid,name,ip))
end

function nc_put_att_int(ncid::Integer,varid::Integer,name,xtype::Integer,len::Integer,op)
    check(ccall((:nc_put_att_int,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},nc_type,Cint,Ptr{Cint}),ncid,varid,name,xtype,len,op))
end

function nc_get_att_int(ncid::Integer,varid::Integer,name,ip)
    check(ccall((:nc_get_att_int,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},Ptr{Cint}),ncid,varid,name,ip))
end

function nc_put_att_long(ncid::Integer,varid::Integer,name,xtype::Integer,len::Integer,op)
    check(ccall((:nc_put_att_long,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},nc_type,Cint,Ptr{Clong}),ncid,varid,name,xtype,len,op))
end

function nc_get_att_long(ncid::Integer,varid::Integer,name,ip)
    check(ccall((:nc_get_att_long,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},Ptr{Clong}),ncid,varid,name,ip))
end

function nc_put_att_float(ncid::Integer,varid::Integer,name,xtype::Integer,len::Integer,op)
    check(ccall((:nc_put_att_float,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},nc_type,Cint,Ptr{Cfloat}),ncid,varid,name,xtype,len,op))
end

function nc_get_att_float(ncid::Integer,varid::Integer,name,ip)
    check(ccall((:nc_get_att_float,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},Ptr{Cfloat}),ncid,varid,name,ip))
end

function nc_put_att_double(ncid::Integer,varid::Integer,name,xtype::Integer,len::Integer,op)
    check(ccall((:nc_put_att_double,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},nc_type,Cint,Ptr{Cdouble}),ncid,varid,name,xtype,len,op))
end

function nc_get_att_double(ncid::Integer,varid::Integer,name,ip)
    check(ccall((:nc_get_att_double,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},Ptr{Cdouble}),ncid,varid,name,ip))
end

function nc_put_att_ushort(ncid::Integer,varid::Integer,name,xtype::Integer,len::Integer,op)
    check(ccall((:nc_put_att_ushort,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},nc_type,Cint,Ptr{UInt16}),ncid,varid,name,xtype,len,op))
end

function nc_get_att_ushort(ncid::Integer,varid::Integer,name,ip)
    check(ccall((:nc_get_att_ushort,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},Ptr{UInt16}),ncid,varid,name,ip))
end

function nc_put_att_uint(ncid::Integer,varid::Integer,name,xtype::Integer,len::Integer,op)
    check(ccall((:nc_put_att_uint,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},nc_type,Cint,Ptr{UInt32}),ncid,varid,name,xtype,len,op))
end

function nc_get_att_uint(ncid::Integer,varid::Integer,name,ip)
    check(ccall((:nc_get_att_uint,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},Ptr{UInt32}),ncid,varid,name,ip))
end

function nc_put_att_longlong(ncid::Integer,varid::Integer,name,xtype::Integer,len::Integer,op)
    check(ccall((:nc_put_att_longlong,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},nc_type,Cint,Ptr{Clonglong}),ncid,varid,name,xtype,len,op))
end

function nc_get_att_longlong(ncid::Integer,varid::Integer,name,ip)
    check(ccall((:nc_get_att_longlong,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},Ptr{Clonglong}),ncid,varid,name,ip))
end

function nc_put_att_ulonglong(ncid::Integer,varid::Integer,name,xtype::Integer,len::Integer,op)
    check(ccall((:nc_put_att_ulonglong,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},nc_type,Cint,Ptr{Culonglong}),ncid,varid,name,xtype,len,op))
end

function nc_get_att_ulonglong(ncid::Integer,varid::Integer,name,ip)
    check(ccall((:nc_get_att_ulonglong,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},Ptr{Culonglong}),ncid,varid,name,ip))
end

function nc_def_var(ncid::Integer,name,xtype::Integer,ndims::Integer,dimidsp,varidp)
    check(ccall((:nc_def_var,libnetcdf),Cint,(Cint,Ptr{UInt8},nc_type,Cint,Ptr{Cint},Ptr{Cint}),ncid,name,xtype,ndims,dimidsp,varidp))
end

function nc_inq_var(ncid::Integer,varid::Integer,name,xtypep,ndimsp,dimidsp,nattsp)
    check(ccall((:nc_inq_var,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},Ptr{nc_type},Ptr{Cint},Ptr{Cint},Ptr{Cint}),ncid,varid,name,xtypep,ndimsp,dimidsp,nattsp))
end

function nc_inq_varid(ncid::Integer,name,varidp)
    check(ccall((:nc_inq_varid,libnetcdf),Cint,(Cint,Ptr{UInt8},Ptr{Cint}),ncid,name,varidp))
end

function nc_inq_varname(ncid::Integer,varid::Integer,name)
    check(ccall((:nc_inq_varname,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8}),ncid,varid,name))
end

function nc_inq_vartype(ncid::Integer,varid::Integer,xtypep)
    check(ccall((:nc_inq_vartype,libnetcdf),Cint,(Cint,Cint,Ptr{nc_type}),ncid,varid,xtypep))
end

function nc_inq_varndims(ncid::Integer,varid::Integer,ndimsp)
    check(ccall((:nc_inq_varndims,libnetcdf),Cint,(Cint,Cint,Ptr{Cint}),ncid,varid,ndimsp))
end

function nc_inq_vardimid(ncid::Integer,varid::Integer,dimidsp)
    check(ccall((:nc_inq_vardimid,libnetcdf),Cint,(Cint,Cint,Ptr{Cint}),ncid,varid,dimidsp))
end

function nc_inq_varnatts(ncid::Integer,varid::Integer,nattsp)
    check(ccall((:nc_inq_varnatts,libnetcdf),Cint,(Cint,Cint,Ptr{Cint}),ncid,varid,nattsp))
end

function nc_rename_var(ncid::Integer,varid::Integer,name)
    check(ccall((:nc_rename_var,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8}),ncid,varid,name))
end

function nc_copy_var(ncid_in::Integer,varid::Integer,ncid_out::Integer)
    check(ccall((:nc_copy_var,libnetcdf),Cint,(Cint,Cint,Cint),ncid_in,varid,ncid_out))
end

function nc_put_var1_text(ncid::Integer,varid::Integer,indexp,op)
    check(ccall((:nc_put_var1_text,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{UInt8}),ncid,varid,indexp,op))
end

function nc_get_var1_text(ncid::Integer,varid::Integer,indexp,ip)
    check(ccall((:nc_get_var1_text,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{UInt8}),ncid,varid,indexp,ip))
end

function nc_put_var1_uchar(ncid::Integer,varid::Integer,indexp,op)
    check(ccall((:nc_put_var1_uchar,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cuchar}),ncid,varid,indexp,op))
end

function nc_get_var1_uchar(ncid::Integer,varid::Integer,indexp,ip)
    check(ccall((:nc_get_var1_uchar,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cuchar}),ncid,varid,indexp,ip))
end

function nc_put_var1_schar(ncid::Integer,varid::Integer,indexp,op)
    check(ccall((:nc_put_var1_schar,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{UInt8}),ncid,varid,indexp,op))
end

function nc_get_var1_schar(ncid::Integer,varid::Integer,indexp,ip)
    check(ccall((:nc_get_var1_schar,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{UInt8}),ncid,varid,indexp,ip))
end

function nc_put_var1_short(ncid::Integer,varid::Integer,indexp,op)
    check(ccall((:nc_put_var1_short,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Int16}),ncid,varid,indexp,op))
end

function nc_get_var1_short(ncid::Integer,varid::Integer,indexp,ip)
    check(ccall((:nc_get_var1_short,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Int16}),ncid,varid,indexp,ip))
end

function nc_put_var1_int(ncid::Integer,varid::Integer,indexp,op)
    check(ccall((:nc_put_var1_int,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint}),ncid,varid,indexp,op))
end

function nc_get_var1_int(ncid::Integer,varid::Integer,indexp,ip)
    check(ccall((:nc_get_var1_int,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint}),ncid,varid,indexp,ip))
end

function nc_put_var1_long(ncid::Integer,varid::Integer,indexp,op)
    check(ccall((:nc_put_var1_long,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Clong}),ncid,varid,indexp,op))
end

function nc_get_var1_long(ncid::Integer,varid::Integer,indexp,ip)
    check(ccall((:nc_get_var1_long,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Clong}),ncid,varid,indexp,ip))
end

function nc_put_var1_float(ncid::Integer,varid::Integer,indexp,op)
    check(ccall((:nc_put_var1_float,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cfloat}),ncid,varid,indexp,op))
end

function nc_get_var1_float(ncid::Integer,varid::Integer,indexp,ip)
    check(ccall((:nc_get_var1_float,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cfloat}),ncid,varid,indexp,ip))
end

function nc_put_var1_double(ncid::Integer,varid::Integer,indexp,op)
    check(ccall((:nc_put_var1_double,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cdouble}),ncid,varid,indexp,op))
end

function nc_get_var1_double(ncid::Integer,varid::Integer,indexp,ip)
    check(ccall((:nc_get_var1_double,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cdouble}),ncid,varid,indexp,ip))
end

function nc_put_var1_ushort(ncid::Integer,varid::Integer,indexp,op)
    check(ccall((:nc_put_var1_ushort,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{UInt16}),ncid,varid,indexp,op))
end

function nc_get_var1_ushort(ncid::Integer,varid::Integer,indexp,ip)
    check(ccall((:nc_get_var1_ushort,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{UInt16}),ncid,varid,indexp,ip))
end

function nc_put_var1_uint(ncid::Integer,varid::Integer,indexp,op)
    check(ccall((:nc_put_var1_uint,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{UInt32}),ncid,varid,indexp,op))
end

function nc_get_var1_uint(ncid::Integer,varid::Integer,indexp,ip)
    check(ccall((:nc_get_var1_uint,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{UInt32}),ncid,varid,indexp,ip))
end

function nc_put_var1_longlong(ncid::Integer,varid::Integer,indexp,op)
    check(ccall((:nc_put_var1_longlong,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Clonglong}),ncid,varid,indexp,op))
end

function nc_get_var1_longlong(ncid::Integer,varid::Integer,indexp,ip)
    check(ccall((:nc_get_var1_longlong,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Clonglong}),ncid,varid,indexp,ip))
end

function nc_put_var1_ulonglong(ncid::Integer,varid::Integer,indexp,op)
    check(ccall((:nc_put_var1_ulonglong,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Culonglong}),ncid,varid,indexp,op))
end

function nc_get_var1_ulonglong(ncid::Integer,varid::Integer,indexp,ip)
    check(ccall((:nc_get_var1_ulonglong,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Culonglong}),ncid,varid,indexp,ip))
end

function nc_put_var1_string(ncid::Integer,varid::Integer,indexp,op)
    check(ccall((:nc_put_var1_string,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Ptr{UInt8}}),ncid,varid,indexp,op))
end

function nc_get_var1_string(ncid::Integer,varid::Integer,indexp,ip)
    check(ccall((:nc_get_var1_string,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Ptr{UInt8}}),ncid,varid,indexp,ip))
end

function nc_put_vara_text(ncid::Integer,varid::Integer,startp,countp,op)
    check(ccall((:nc_put_vara_text,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{UInt8}),ncid,varid,startp,countp,op))
end

function nc_get_vara_text(ncid::Integer,varid::Integer,startp,countp,ip)
    check(ccall((:nc_get_vara_text,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{UInt8}),ncid,varid,startp,countp,ip))
end

function nc_put_vara_uchar(ncid::Integer,varid::Integer,startp,countp,op)
    check(ccall((:nc_put_vara_uchar,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cuchar}),ncid,varid,startp,countp,op))
end

function nc_get_vara_uchar(ncid::Integer,varid::Integer,startp,countp,ip)
    check(ccall((:nc_get_vara_uchar,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cuchar}),ncid,varid,startp,countp,ip))
end

function nc_put_vara_schar(ncid::Integer,varid::Integer,startp,countp,op)
    check(ccall((:nc_put_vara_schar,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{UInt8}),ncid,varid,startp,countp,op))
end

function nc_get_vara_schar(ncid::Integer,varid::Integer,startp,countp,ip)
    check(ccall((:nc_get_vara_schar,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{UInt8}),ncid,varid,startp,countp,ip))
end

function nc_put_vara_short(ncid::Integer,varid::Integer,startp,countp,op)
    check(ccall((:nc_put_vara_short,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Int16}),ncid,varid,startp,countp,op))
end

function nc_get_vara_short(ncid::Integer,varid::Integer,startp,countp,ip)
    check(ccall((:nc_get_vara_short,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Int16}),ncid,varid,startp,countp,ip))
end

function nc_put_vara_int(ncid::Integer,varid::Integer,startp,countp,op)
    check(ccall((:nc_put_vara_int,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint}),ncid,varid,startp,countp,op))
end

function nc_get_vara_int(ncid::Integer,varid::Integer,startp,countp,ip)
    check(ccall((:nc_get_vara_int,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint}),ncid,varid,startp,countp,ip))
end

function nc_put_vara_long(ncid::Integer,varid::Integer,startp,countp,op)
    check(ccall((:nc_put_vara_long,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Clong}),ncid,varid,startp,countp,op))
end

function nc_get_vara_long(ncid::Integer,varid::Integer,startp,countp,ip)
    check(ccall((:nc_get_vara_long,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Clong}),ncid,varid,startp,countp,ip))
end

function nc_put_vara_float(ncid::Integer,varid::Integer,startp,countp,op)
    check(ccall((:nc_put_vara_float,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cfloat}),ncid,varid,startp,countp,op))
end

function nc_get_vara_float(ncid::Integer,varid::Integer,startp,countp,ip)
    check(ccall((:nc_get_vara_float,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cfloat}),ncid,varid,startp,countp,ip))
end

function nc_put_vara_double(ncid::Integer,varid::Integer,startp,countp,op)
    check(ccall((:nc_put_vara_double,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cdouble}),ncid,varid,startp,countp,op))
end

function nc_get_vara_double(ncid::Integer,varid::Integer,startp,countp,ip)
    check(ccall((:nc_get_vara_double,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cdouble}),ncid,varid,startp,countp,ip))
end

function nc_put_vara_ushort(ncid::Integer,varid::Integer,startp,countp,op)
    check(ccall((:nc_put_vara_ushort,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{UInt16}),ncid,varid,startp,countp,op))
end

function nc_get_vara_ushort(ncid::Integer,varid::Integer,startp,countp,ip)
    check(ccall((:nc_get_vara_ushort,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{UInt16}),ncid,varid,startp,countp,ip))
end

function nc_put_vara_uint(ncid::Integer,varid::Integer,startp,countp,op)
    check(ccall((:nc_put_vara_uint,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{UInt32}),ncid,varid,startp,countp,op))
end

function nc_get_vara_uint(ncid::Integer,varid::Integer,startp,countp,ip)
    check(ccall((:nc_get_vara_uint,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{UInt32}),ncid,varid,startp,countp,ip))
end

function nc_put_vara_longlong(ncid::Integer,varid::Integer,startp,countp,op)
    check(ccall((:nc_put_vara_longlong,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Clonglong}),ncid,varid,startp,countp,op))
end

function nc_get_vara_longlong(ncid::Integer,varid::Integer,startp,countp,ip)
    check(ccall((:nc_get_vara_longlong,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Clonglong}),ncid,varid,startp,countp,ip))
end

function nc_put_vara_ulonglong(ncid::Integer,varid::Integer,startp,countp,op)
    check(ccall((:nc_put_vara_ulonglong,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Culonglong}),ncid,varid,startp,countp,op))
end

function nc_get_vara_ulonglong(ncid::Integer,varid::Integer,startp,countp,ip)
    check(ccall((:nc_get_vara_ulonglong,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Culonglong}),ncid,varid,startp,countp,ip))
end

function nc_put_vara_string(ncid::Integer,varid::Integer,startp,countp,op)
    check(ccall((:nc_put_vara_string,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Ptr{UInt8}}),ncid,varid,startp,countp,op))
end

function nc_get_vara_string(ncid::Integer,varid::Integer,startp,countp,ip)
    check(ccall((:nc_get_vara_string,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Ptr{UInt8}}),ncid,varid,startp,countp,ip))
end

function nc_put_vars_text(ncid::Integer,varid::Integer,startp,countp,stridep,op)
    check(ccall((:nc_put_vars_text,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{UInt8}),ncid,varid,startp,countp,stridep,op))
end

function nc_get_vars_text(ncid::Integer,varid::Integer,startp,countp,stridep,ip)
    check(ccall((:nc_get_vars_text,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{UInt8}),ncid,varid,startp,countp,stridep,ip))
end

function nc_put_vars_uchar(ncid::Integer,varid::Integer,startp,countp,stridep,op)
    check(ccall((:nc_put_vars_uchar,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cuchar}),ncid,varid,startp,countp,stridep,op))
end

function nc_get_vars_uchar(ncid::Integer,varid::Integer,startp,countp,stridep,ip)
    check(ccall((:nc_get_vars_uchar,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cuchar}),ncid,varid,startp,countp,stridep,ip))
end

function nc_put_vars_schar(ncid::Integer,varid::Integer,startp,countp,stridep,op)
    check(ccall((:nc_put_vars_schar,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{UInt8}),ncid,varid,startp,countp,stridep,op))
end

function nc_get_vars_schar(ncid::Integer,varid::Integer,startp,countp,stridep,ip)
    check(ccall((:nc_get_vars_schar,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{UInt8}),ncid,varid,startp,countp,stridep,ip))
end

function nc_put_vars_short(ncid::Integer,varid::Integer,startp,countp,stridep,op)
    check(ccall((:nc_put_vars_short,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Int16}),ncid,varid,startp,countp,stridep,op))
end

function nc_get_vars_short(ncid::Integer,varid::Integer,startp,countp,stridep,ip)
    check(ccall((:nc_get_vars_short,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Int16}),ncid,varid,startp,countp,stridep,ip))
end

function nc_put_vars_int(ncid::Integer,varid::Integer,startp,countp,stridep,op)
    check(ccall((:nc_put_vars_int,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint}),ncid,varid,startp,countp,stridep,op))
end

function nc_get_vars_int(ncid::Integer,varid::Integer,startp,countp,stridep,ip)
    check(ccall((:nc_get_vars_int,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint}),ncid,varid,startp,countp,stridep,ip))
end

function nc_put_vars_long(ncid::Integer,varid::Integer,startp,countp,stridep,op)
    check(ccall((:nc_put_vars_long,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Clong}),ncid,varid,startp,countp,stridep,op))
end

function nc_get_vars_long(ncid::Integer,varid::Integer,startp,countp,stridep,ip)
    check(ccall((:nc_get_vars_long,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Clong}),ncid,varid,startp,countp,stridep,ip))
end

function nc_put_vars_float(ncid::Integer,varid::Integer,startp,countp,stridep,op)
    check(ccall((:nc_put_vars_float,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cfloat}),ncid,varid,startp,countp,stridep,op))
end

function nc_get_vars_float(ncid::Integer,varid::Integer,startp,countp,stridep,ip)
    check(ccall((:nc_get_vars_float,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cfloat}),ncid,varid,startp,countp,stridep,ip))
end

function nc_put_vars_double(ncid::Integer,varid::Integer,startp,countp,stridep,op)
    check(ccall((:nc_put_vars_double,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cdouble}),ncid,varid,startp,countp,stridep,op))
end

function nc_get_vars_double(ncid::Integer,varid::Integer,startp,countp,stridep,ip)
    check(ccall((:nc_get_vars_double,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cdouble}),ncid,varid,startp,countp,stridep,ip))
end

function nc_put_vars_ushort(ncid::Integer,varid::Integer,startp,countp,stridep,op)
    check(ccall((:nc_put_vars_ushort,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{UInt16}),ncid,varid,startp,countp,stridep,op))
end

function nc_get_vars_ushort(ncid::Integer,varid::Integer,startp,countp,stridep,ip)
    check(ccall((:nc_get_vars_ushort,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{UInt16}),ncid,varid,startp,countp,stridep,ip))
end

function nc_put_vars_uint(ncid::Integer,varid::Integer,startp,countp,stridep,op)
    check(ccall((:nc_put_vars_uint,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{UInt32}),ncid,varid,startp,countp,stridep,op))
end

function nc_get_vars_uint(ncid::Integer,varid::Integer,startp,countp,stridep,ip)
    check(ccall((:nc_get_vars_uint,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{UInt32}),ncid,varid,startp,countp,stridep,ip))
end

function nc_put_vars_longlong(ncid::Integer,varid::Integer,startp,countp,stridep,op)
    check(ccall((:nc_put_vars_longlong,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Clonglong}),ncid,varid,startp,countp,stridep,op))
end

function nc_get_vars_longlong(ncid::Integer,varid::Integer,startp,countp,stridep,ip)
    check(ccall((:nc_get_vars_longlong,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Clonglong}),ncid,varid,startp,countp,stridep,ip))
end

function nc_put_vars_ulonglong(ncid::Integer,varid::Integer,startp,countp,stridep,op)
    check(ccall((:nc_put_vars_ulonglong,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Culonglong}),ncid,varid,startp,countp,stridep,op))
end

function nc_get_vars_ulonglong(ncid::Integer,varid::Integer,startp,countp,stridep,ip)
    check(ccall((:nc_get_vars_ulonglong,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Culonglong}),ncid,varid,startp,countp,stridep,ip))
end

function nc_put_vars_string(ncid::Integer,varid::Integer,startp,countp,stridep,op)
    check(ccall((:nc_put_vars_string,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Ptr{UInt8}}),ncid,varid,startp,countp,stridep,op))
end

function nc_get_vars_string(ncid::Integer,varid::Integer,startp,countp,stridep,ip)
    check(ccall((:nc_get_vars_string,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Ptr{UInt8}}),ncid,varid,startp,countp,stridep,ip))
end

function nc_put_varm_text(ncid::Integer,varid::Integer,startp,countp,stridep,imapp,op)
    check(ccall((:nc_put_varm_text,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{UInt8}),ncid,varid,startp,countp,stridep,imapp,op))
end

function nc_get_varm_text(ncid::Integer,varid::Integer,startp,countp,stridep,imapp,ip)
    check(ccall((:nc_get_varm_text,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{UInt8}),ncid,varid,startp,countp,stridep,imapp,ip))
end

function nc_put_varm_uchar(ncid::Integer,varid::Integer,startp,countp,stridep,imapp,op)
    check(ccall((:nc_put_varm_uchar,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cuchar}),ncid,varid,startp,countp,stridep,imapp,op))
end

function nc_get_varm_uchar(ncid::Integer,varid::Integer,startp,countp,stridep,imapp,ip)
    check(ccall((:nc_get_varm_uchar,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cuchar}),ncid,varid,startp,countp,stridep,imapp,ip))
end

function nc_put_varm_schar(ncid::Integer,varid::Integer,startp,countp,stridep,imapp,op)
    check(ccall((:nc_put_varm_schar,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{UInt8}),ncid,varid,startp,countp,stridep,imapp,op))
end

function nc_get_varm_schar(ncid::Integer,varid::Integer,startp,countp,stridep,imapp,ip)
    check(ccall((:nc_get_varm_schar,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{UInt8}),ncid,varid,startp,countp,stridep,imapp,ip))
end

function nc_put_varm_short(ncid::Integer,varid::Integer,startp,countp,stridep,imapp,op)
    check(ccall((:nc_put_varm_short,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Int16}),ncid,varid,startp,countp,stridep,imapp,op))
end

function nc_get_varm_short(ncid::Integer,varid::Integer,startp,countp,stridep,imapp,ip)
    check(ccall((:nc_get_varm_short,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Int16}),ncid,varid,startp,countp,stridep,imapp,ip))
end

function nc_put_varm_int(ncid::Integer,varid::Integer,startp,countp,stridep,imapp,op)
    check(ccall((:nc_put_varm_int,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint}),ncid,varid,startp,countp,stridep,imapp,op))
end

function nc_get_varm_int(ncid::Integer,varid::Integer,startp,countp,stridep,imapp,ip)
    check(ccall((:nc_get_varm_int,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint}),ncid,varid,startp,countp,stridep,imapp,ip))
end

function nc_put_varm_long(ncid::Integer,varid::Integer,startp,countp,stridep,imapp,op)
    check(ccall((:nc_put_varm_long,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Clong}),ncid,varid,startp,countp,stridep,imapp,op))
end

function nc_get_varm_long(ncid::Integer,varid::Integer,startp,countp,stridep,imapp,ip)
    check(ccall((:nc_get_varm_long,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Clong}),ncid,varid,startp,countp,stridep,imapp,ip))
end

function nc_put_varm_float(ncid::Integer,varid::Integer,startp,countp,stridep,imapp,op)
    check(ccall((:nc_put_varm_float,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cfloat}),ncid,varid,startp,countp,stridep,imapp,op))
end

function nc_get_varm_float(ncid::Integer,varid::Integer,startp,countp,stridep,imapp,ip)
    check(ccall((:nc_get_varm_float,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cfloat}),ncid,varid,startp,countp,stridep,imapp,ip))
end

function nc_put_varm_double(ncid::Integer,varid::Integer,startp,countp,stridep,imapp,op)
    check(ccall((:nc_put_varm_double,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cdouble}),ncid,varid,startp,countp,stridep,imapp,op))
end

function nc_get_varm_double(ncid::Integer,varid::Integer,startp,countp,stridep,imapp,ip)
    check(ccall((:nc_get_varm_double,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cdouble}),ncid,varid,startp,countp,stridep,imapp,ip))
end

function nc_put_varm_ushort(ncid::Integer,varid::Integer,startp,countp,stridep,imapp,op)
    check(ccall((:nc_put_varm_ushort,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{UInt16}),ncid,varid,startp,countp,stridep,imapp,op))
end

function nc_get_varm_ushort(ncid::Integer,varid::Integer,startp,countp,stridep,imapp,ip)
    check(ccall((:nc_get_varm_ushort,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{UInt16}),ncid,varid,startp,countp,stridep,imapp,ip))
end

function nc_put_varm_uint(ncid::Integer,varid::Integer,startp,countp,stridep,imapp,op)
    check(ccall((:nc_put_varm_uint,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{UInt32}),ncid,varid,startp,countp,stridep,imapp,op))
end

function nc_get_varm_uint(ncid::Integer,varid::Integer,startp,countp,stridep,imapp,ip)
    check(ccall((:nc_get_varm_uint,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{UInt32}),ncid,varid,startp,countp,stridep,imapp,ip))
end

function nc_put_varm_longlong(ncid::Integer,varid::Integer,startp,countp,stridep,imapp,op)
    check(ccall((:nc_put_varm_longlong,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Clonglong}),ncid,varid,startp,countp,stridep,imapp,op))
end

function nc_get_varm_longlong(ncid::Integer,varid::Integer,startp,countp,stridep,imapp,ip)
    check(ccall((:nc_get_varm_longlong,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Clonglong}),ncid,varid,startp,countp,stridep,imapp,ip))
end

function nc_put_varm_ulonglong(ncid::Integer,varid::Integer,startp,countp,stridep,imapp,op)
    check(ccall((:nc_put_varm_ulonglong,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Culonglong}),ncid,varid,startp,countp,stridep,imapp,op))
end

function nc_get_varm_ulonglong(ncid::Integer,varid::Integer,startp,countp,stridep,imapp,ip)
    check(ccall((:nc_get_varm_ulonglong,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Culonglong}),ncid,varid,startp,countp,stridep,imapp,ip))
end

function nc_put_varm_string(ncid::Integer,varid::Integer,startp,countp,stridep,imapp,op)
    check(ccall((:nc_put_varm_string,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Ptr{UInt8}}),ncid,varid,startp,countp,stridep,imapp,op))
end

function nc_get_varm_string(ncid::Integer,varid::Integer,startp,countp,stridep,imapp,ip)
    check(ccall((:nc_get_varm_string,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Ptr{UInt8}}),ncid,varid,startp,countp,stridep,imapp,ip))
end

function nc_put_var_text(ncid::Integer,varid::Integer,op)
    check(ccall((:nc_put_var_text,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8}),ncid,varid,op))
end

function nc_get_var_text(ncid::Integer,varid::Integer,ip)
    check(ccall((:nc_get_var_text,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8}),ncid,varid,ip))
end

function nc_put_var_uchar(ncid::Integer,varid::Integer,op)
    check(ccall((:nc_put_var_uchar,libnetcdf),Cint,(Cint,Cint,Ptr{Cuchar}),ncid,varid,op))
end

function nc_get_var_uchar(ncid::Integer,varid::Integer,ip)
    check(ccall((:nc_get_var_uchar,libnetcdf),Cint,(Cint,Cint,Ptr{Cuchar}),ncid,varid,ip))
end

function nc_put_var_schar(ncid::Integer,varid::Integer,op)
    check(ccall((:nc_put_var_schar,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8}),ncid,varid,op))
end

function nc_get_var_schar(ncid::Integer,varid::Integer,ip)
    check(ccall((:nc_get_var_schar,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8}),ncid,varid,ip))
end

function nc_put_var_short(ncid::Integer,varid::Integer,op)
    check(ccall((:nc_put_var_short,libnetcdf),Cint,(Cint,Cint,Ptr{Int16}),ncid,varid,op))
end

function nc_get_var_short(ncid::Integer,varid::Integer,ip)
    check(ccall((:nc_get_var_short,libnetcdf),Cint,(Cint,Cint,Ptr{Int16}),ncid,varid,ip))
end

function nc_put_var_int(ncid::Integer,varid::Integer,op)
    check(ccall((:nc_put_var_int,libnetcdf),Cint,(Cint,Cint,Ptr{Cint}),ncid,varid,op))
end

function nc_get_var_int(ncid::Integer,varid::Integer,ip)
    check(ccall((:nc_get_var_int,libnetcdf),Cint,(Cint,Cint,Ptr{Cint}),ncid,varid,ip))
end

function nc_put_var_long(ncid::Integer,varid::Integer,op)
    check(ccall((:nc_put_var_long,libnetcdf),Cint,(Cint,Cint,Ptr{Clong}),ncid,varid,op))
end

function nc_get_var_long(ncid::Integer,varid::Integer,ip)
    check(ccall((:nc_get_var_long,libnetcdf),Cint,(Cint,Cint,Ptr{Clong}),ncid,varid,ip))
end

function nc_put_var_float(ncid::Integer,varid::Integer,op)
    check(ccall((:nc_put_var_float,libnetcdf),Cint,(Cint,Cint,Ptr{Cfloat}),ncid,varid,op))
end

function nc_get_var_float(ncid::Integer,varid::Integer,ip)
    check(ccall((:nc_get_var_float,libnetcdf),Cint,(Cint,Cint,Ptr{Cfloat}),ncid,varid,ip))
end

function nc_put_var_double(ncid::Integer,varid::Integer,op)
    check(ccall((:nc_put_var_double,libnetcdf),Cint,(Cint,Cint,Ptr{Cdouble}),ncid,varid,op))
end

function nc_get_var_double(ncid::Integer,varid::Integer,ip)
    check(ccall((:nc_get_var_double,libnetcdf),Cint,(Cint,Cint,Ptr{Cdouble}),ncid,varid,ip))
end

function nc_put_var_ushort(ncid::Integer,varid::Integer,op)
    check(ccall((:nc_put_var_ushort,libnetcdf),Cint,(Cint,Cint,Ptr{UInt16}),ncid,varid,op))
end

function nc_get_var_ushort(ncid::Integer,varid::Integer,ip)
    check(ccall((:nc_get_var_ushort,libnetcdf),Cint,(Cint,Cint,Ptr{UInt16}),ncid,varid,ip))
end

function nc_put_var_uint(ncid::Integer,varid::Integer,op)
    check(ccall((:nc_put_var_uint,libnetcdf),Cint,(Cint,Cint,Ptr{UInt32}),ncid,varid,op))
end

function nc_get_var_uint(ncid::Integer,varid::Integer,ip)
    check(ccall((:nc_get_var_uint,libnetcdf),Cint,(Cint,Cint,Ptr{UInt32}),ncid,varid,ip))
end

function nc_put_var_longlong(ncid::Integer,varid::Integer,op)
    check(ccall((:nc_put_var_longlong,libnetcdf),Cint,(Cint,Cint,Ptr{Clonglong}),ncid,varid,op))
end

function nc_get_var_longlong(ncid::Integer,varid::Integer,ip)
    check(ccall((:nc_get_var_longlong,libnetcdf),Cint,(Cint,Cint,Ptr{Clonglong}),ncid,varid,ip))
end

function nc_put_var_ulonglong(ncid::Integer,varid::Integer,op)
    check(ccall((:nc_put_var_ulonglong,libnetcdf),Cint,(Cint,Cint,Ptr{Culonglong}),ncid,varid,op))
end

function nc_get_var_ulonglong(ncid::Integer,varid::Integer,ip)
    check(ccall((:nc_get_var_ulonglong,libnetcdf),Cint,(Cint,Cint,Ptr{Culonglong}),ncid,varid,ip))
end

function nc_put_var_string(ncid::Integer,varid::Integer,op)
    check(ccall((:nc_put_var_string,libnetcdf),Cint,(Cint,Cint,Ptr{Ptr{UInt8}}),ncid,varid,op))
end

function nc_get_var_string(ncid::Integer,varid::Integer,ip)
    check(ccall((:nc_get_var_string,libnetcdf),Cint,(Cint,Cint,Ptr{Ptr{UInt8}}),ncid,varid,ip))
end

function nc_put_att_ubyte(ncid::Integer,varid::Integer,name,xtype::Integer,len::Integer,op)
    check(ccall((:nc_put_att_ubyte,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},nc_type,Cint,Ptr{Cuchar}),ncid,varid,name,xtype,len,op))
end

function nc_get_att_ubyte(ncid::Integer,varid::Integer,name,ip)
    check(ccall((:nc_get_att_ubyte,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},Ptr{Cuchar}),ncid,varid,name,ip))
end

function nc_put_var1_ubyte(ncid::Integer,varid::Integer,indexp,op)
    check(ccall((:nc_put_var1_ubyte,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cuchar}),ncid,varid,indexp,op))
end

function nc_get_var1_ubyte(ncid::Integer,varid::Integer,indexp,ip)
    check(ccall((:nc_get_var1_ubyte,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cuchar}),ncid,varid,indexp,ip))
end

function nc_put_vara_ubyte(ncid::Integer,varid::Integer,startp,countp,op)
    check(ccall((:nc_put_vara_ubyte,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cuchar}),ncid,varid,startp,countp,op))
end

function nc_get_vara_ubyte(ncid::Integer,varid::Integer,startp,countp,ip)
    check(ccall((:nc_get_vara_ubyte,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cuchar}),ncid,varid,startp,countp,ip))
end

function nc_put_vars_ubyte(ncid::Integer,varid::Integer,startp,countp,stridep,op)
    check(ccall((:nc_put_vars_ubyte,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cuchar}),ncid,varid,startp,countp,stridep,op))
end

function nc_get_vars_ubyte(ncid::Integer,varid::Integer,startp,countp,stridep,ip)
    check(ccall((:nc_get_vars_ubyte,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cuchar}),ncid,varid,startp,countp,stridep,ip))
end

function nc_put_varm_ubyte(ncid::Integer,varid::Integer,startp,countp,stridep,imapp,op)
    check(ccall((:nc_put_varm_ubyte,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cuchar}),ncid,varid,startp,countp,stridep,imapp,op))
end

function nc_get_varm_ubyte(ncid::Integer,varid::Integer,startp,countp,stridep,imapp,ip)
    check(ccall((:nc_get_varm_ubyte,libnetcdf),Cint,(Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cuchar}),ncid,varid,startp,countp,stridep,imapp,ip))
end

function nc_put_var_ubyte(ncid::Integer,varid::Integer,op)
    check(ccall((:nc_put_var_ubyte,libnetcdf),Cint,(Cint,Cint,Ptr{Cuchar}),ncid,varid,op))
end

function nc_get_var_ubyte(ncid::Integer,varid::Integer,ip)
    check(ccall((:nc_get_var_ubyte,libnetcdf),Cint,(Cint,Cint,Ptr{Cuchar}),ncid,varid,ip))
end

function nc_show_metadata(ncid::Integer)
    check(ccall((:nc_show_metadata,libnetcdf),Cint,(Cint,),ncid))
end

function nc__create_mp(path,cmode::Integer,initialsz::Integer,basepe::Integer,chunksizehintp,ncidp)
    check(ccall((:nc__create_mp,libnetcdf),Cint,(Ptr{UInt8},Cint,Cint,Cint,Ptr{Cint},Ptr{Cint}),path,cmode,initialsz,basepe,chunksizehintp,ncidp))
end

function nc__open_mp(path,mode::Integer,basepe::Integer,chunksizehintp,ncidp)
    check(ccall((:nc__open_mp,libnetcdf),Cint,(Ptr{UInt8},Cint,Cint,Ptr{Cint},Ptr{Cint}),path,mode,basepe,chunksizehintp,ncidp))
end

function nc_delete(path)
    check(ccall((:nc_delete,libnetcdf),Cint,(Ptr{UInt8},),path))
end

function nc_delete_mp(path,basepe::Integer)
    check(ccall((:nc_delete_mp,libnetcdf),Cint,(Ptr{UInt8},Cint),path,basepe))
end

function nc_set_base_pe(ncid::Integer,pe::Integer)
    check(ccall((:nc_set_base_pe,libnetcdf),Cint,(Cint,Cint),ncid,pe))
end

function nc_inq_base_pe(ncid::Integer,pe)
    check(ccall((:nc_inq_base_pe,libnetcdf),Cint,(Cint,Ptr{Cint}),ncid,pe))
end

function nctypelen(datatype::Integer)
    check(ccall((:nctypelen,libnetcdf),Cint,(nc_type,),datatype))
end

function nccreate(path,cmode::Integer)
    check(ccall((:nccreate,libnetcdf),Cint,(Ptr{UInt8},Cint),path,cmode))
end

function ncopen(path,mode::Integer)
    check(ccall((:ncopen,libnetcdf),Cint,(Ptr{UInt8},Cint),path,mode))
end

function ncsetfill(ncid::Integer,fillmode::Integer)
    check(ccall((:ncsetfill,libnetcdf),Cint,(Cint,Cint),ncid,fillmode))
end

function ncredef(ncid::Integer)
    check(ccall((:ncredef,libnetcdf),Cint,(Cint,),ncid))
end

function ncendef(ncid::Integer)
    check(ccall((:ncendef,libnetcdf),Cint,(Cint,),ncid))
end

function ncsync(ncid::Integer)
    check(ccall((:ncsync,libnetcdf),Cint,(Cint,),ncid))
end

function ncabort(ncid::Integer)
    check(ccall((:ncabort,libnetcdf),Cint,(Cint,),ncid))
end

function ncclose(ncid::Integer)
    check(ccall((:ncclose,libnetcdf),Cint,(Cint,),ncid))
end

function ncinquire(ncid::Integer,ndimsp,nvarsp,nattsp,unlimdimp)
    check(ccall((:ncinquire,libnetcdf),Cint,(Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint}),ncid,ndimsp,nvarsp,nattsp,unlimdimp))
end

function ncdimdef(ncid::Integer,name,len::Clong)
    check(ccall((:ncdimdef,libnetcdf),Cint,(Cint,Ptr{UInt8},Clong),ncid,name,len))
end

function ncdimid(ncid::Integer,name)
    check(ccall((:ncdimid,libnetcdf),Cint,(Cint,Ptr{UInt8}),ncid,name))
end

function ncdiminq(ncid::Integer,dimid::Integer,name,lenp)
    check(ccall((:ncdiminq,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},Ptr{Clong}),ncid,dimid,name,lenp))
end

function ncdimrename(ncid::Integer,dimid::Integer,name)
    check(ccall((:ncdimrename,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8}),ncid,dimid,name))
end

function ncattput(ncid::Integer,varid::Integer,name,xtype::Integer,len::Integer,op)
    check(ccall((:ncattput,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},nc_type,Cint,Ptr{Void}),ncid,varid,name,xtype,len,op))
end

function ncattinq(ncid::Integer,varid::Integer,name,xtypep,lenp)
    check(ccall((:ncattinq,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},Ptr{nc_type},Ptr{Cint}),ncid,varid,name,xtypep,lenp))
end

function ncattget(ncid::Integer,varid::Integer,name,ip)
    check(ccall((:ncattget,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},Ptr{Void}),ncid,varid,name,ip))
end

function ncattcopy(ncid_in::Integer,varid_in::Integer,name,ncid_out::Integer,varid_out::Integer)
    check(ccall((:ncattcopy,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},Cint,Cint),ncid_in,varid_in,name,ncid_out,varid_out))
end

function ncattname(ncid::Integer,varid::Integer,attnum::Integer,name)
    check(ccall((:ncattname,libnetcdf),Cint,(Cint,Cint,Cint,Ptr{UInt8}),ncid,varid,attnum,name))
end

function ncattrename(ncid::Integer,varid::Integer,name,newname)
    check(ccall((:ncattrename,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},Ptr{UInt8}),ncid,varid,name,newname))
end

function ncattdel(ncid::Integer,varid::Integer,name)
    check(ccall((:ncattdel,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8}),ncid,varid,name))
end

function ncvardef(ncid::Integer,name,xtype::Integer,ndims::Integer,dimidsp)
    check(ccall((:ncvardef,libnetcdf),Cint,(Cint,Ptr{UInt8},nc_type,Cint,Ptr{Cint}),ncid,name,xtype,ndims,dimidsp))
end

function ncvarid(ncid::Integer,name)
    check(ccall((:ncvarid,libnetcdf),Cint,(Cint,Ptr{UInt8}),ncid,name))
end

function ncvarinq(ncid::Integer,varid::Integer,name,xtypep,ndimsp,dimidsp,nattsp)
    check(ccall((:ncvarinq,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8},Ptr{nc_type},Ptr{Cint},Ptr{Cint},Ptr{Cint}),ncid,varid,name,xtypep,ndimsp,dimidsp,nattsp))
end

function ncvarput1(ncid::Integer,varid::Integer,indexp,op)
    check(ccall((:ncvarput1,libnetcdf),Cint,(Cint,Cint,Ptr{Clong},Ptr{Void}),ncid,varid,indexp,op))
end

function ncvarget1(ncid::Integer,varid::Integer,indexp,ip)
    check(ccall((:ncvarget1,libnetcdf),Cint,(Cint,Cint,Ptr{Clong},Ptr{Void}),ncid,varid,indexp,ip))
end

function ncvarput(ncid::Integer,varid::Integer,startp,countp,op)
    check(ccall((:ncvarput,libnetcdf),Cint,(Cint,Cint,Ptr{Clong},Ptr{Clong},Ptr{Void}),ncid,varid,startp,countp,op))
end

function ncvarget(ncid::Integer,varid::Integer,startp,countp,ip)
    check(ccall((:ncvarget,libnetcdf),Cint,(Cint,Cint,Ptr{Clong},Ptr{Clong},Ptr{Void}),ncid,varid,startp,countp,ip))
end

function ncvarputs(ncid::Integer,varid::Integer,startp,countp,stridep,op)
    check(ccall((:ncvarputs,libnetcdf),Cint,(Cint,Cint,Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Void}),ncid,varid,startp,countp,stridep,op))
end

function ncvargets(ncid::Integer,varid::Integer,startp,countp,stridep,ip)
    check(ccall((:ncvargets,libnetcdf),Cint,(Cint,Cint,Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Void}),ncid,varid,startp,countp,stridep,ip))
end

function ncvarputg(ncid::Integer,varid::Integer,startp,countp,stridep,imapp,op)
    check(ccall((:ncvarputg,libnetcdf),Cint,(Cint,Cint,Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Void}),ncid,varid,startp,countp,stridep,imapp,op))
end

function ncvargetg(ncid::Integer,varid::Integer,startp,countp,stridep,imapp,ip)
    check(ccall((:ncvargetg,libnetcdf),Cint,(Cint,Cint,Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Void}),ncid,varid,startp,countp,stridep,imapp,ip))
end

function ncvarrename(ncid::Integer,varid::Integer,name)
    check(ccall((:ncvarrename,libnetcdf),Cint,(Cint,Cint,Ptr{UInt8}),ncid,varid,name))
end

function ncrecinq(ncid::Integer,nrecvarsp,recvaridsp,recsizesp)
    check(ccall((:ncrecinq,libnetcdf),Cint,(Cint,Ptr{Cint},Ptr{Cint},Ptr{Clong}),ncid,nrecvarsp,recvaridsp,recsizesp))
end

function ncrecget(ncid::Integer,recnum::Clong,datap)
    check(ccall((:ncrecget,libnetcdf),Cint,(Cint,Clong,Ptr{Ptr{Void}}),ncid,recnum,datap))
end

function ncrecput(ncid::Integer,recnum::Clong,datap)
    check(ccall((:ncrecput,libnetcdf),Cint,(Cint,Clong,Ptr{Ptr{Void}}),ncid,recnum,datap))
end
