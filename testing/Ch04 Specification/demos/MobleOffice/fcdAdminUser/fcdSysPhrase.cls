VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "fcdSysPhrase"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Attribute VB_Ext_KEY = "RVB_UniqueId" ,"3DAFBD9E0105"
Attribute VB_Ext_KEY = "RVB_ModelStereotype" ,"Class Module"
Option Explicit


'���ָ�� ID ϵͳ������
'##ModelId=3DB4526002F6
Public Function GetSysPhraseByID(ID As Long) As Recordset
    Dim objMngr As MainBusInterface.IMaintData
    Set objMngr = CreateObject("MainBusiness.SysPhraseManager")
    Set GetSysPhraseByID = objMngr.GetListByID(ID)
    Set objMngr = Nothing
    
End Function


'�õ��յļ�¼����
'������
'return: recordset
'���ؿյļ�¼��
'##ModelId=3DB0FACA002B
Public Function GetEmptyRecordset() As Recordset
    Dim objMngr As MainBusInterface.IMaintData
    Set objMngr = CreateObject("MainBusiness.SysPhraseManager")
    Set GetEmptyRecordset = objMngr.GetEmpty()
    Set objMngr = Nothing
    
End Function


'ɾ��ϵͳ�����
'������
'ID: long
'ϵͳ������ı�ʶ
'##ModelId=3DB0FADB0135
Public Sub DeleteSysPhrase(ID As Long)
    Dim objMngr As MainBusInterface.IMaintData
    Set objMngr = CreateObject("MainBusiness.SysPhraseManager")
    objMngr.Delete ID
    Set objMngr = Nothing
    
End Sub


'�õ�ϵͳ�������б���
'������
'return: recordset
'��������ϵͳ�������б���
'##ModelId=3DABFE010364
Public Function GetSysPhraseList() As Recordset
    Dim objBus As MainBusInterface.IMaintData
    Set objBus = CreateObject("MainBusiness.SysPhraseManager")
    Set GetSysPhraseList = objBus.GetAll()
    Set objBus = Nothing
    
End Function


'����ϵͳ�����
'������
'rs: recordset
'������ĵ�ϵͳ�������¼��
'##ModelId=3DABFE010383
Public Sub SaveSysPhrase(rs As Recordset)
    Dim objBus As MainBusInterface.IMaintData
    Set objBus = CreateObject("MainBusiness.SysPhraseManager")
    objBus.Save rs
    Set objBus = Nothing
    
End Sub